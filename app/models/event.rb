class Event < ActiveRecord::Base
  geocoded_by :location   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  after_update :notify_system
  before_save :check_over

  belongs_to :user
  belongs_to :category

  has_many :donations, as: :donatable
  has_many :votes, as: :votable
  has_many :comments
  has_many :participations
  has_many :participants, through: :participations, source: :event
  has_many :notifications, dependent: :destroy

  validates :category, presence: true

  scope :enable, -> { where(enable: true) }
  scope :featured, -> { enable.joins(:votes).group("events.id").order('count(events.id) DESC') }
  scope :near_me, -> (lat, lon) { Event.near([lat, lon], 100).limit(10) }

  def vote_by!(user)
    # create a new vote associating user and photo
    raise "Already voted" if voted_by?(user)
    votes.find_or_create_by!(voter: user)
  end

  def unvote_by!(user)
    raise "Not yet voted" unless voted_by?(user)
    votes.where(voter: user).first.destroy
  end

  def voted_by?(user)
    votes.exists?(voter: user)
  end

  def vote_count
    votes.size
  end

  def send_sms
    message = "\nXin chúc mừng:\n"
    message += "Ý tưởng của bạn đã quyên góp đủ số tiền.\n"
    message += "\nÝ tưởng: #{name}"
    message += "\nTổng số tiền nhận được: #{donations.sum(:amount)} VNĐ"
    message += "\n\nHãy thực hiện ý tưởng của bạn vì cộng đồng"
    @client = Twilio::REST::Client.new "AC1f944d7f633a1bd6d3a87d6ca62ef497", "d323885b3cfdcb0aaa079ba5b60998c3"
    @client.messages.create(
      from: "+12017318643",
      to: "+841289816416",
      body: message
    )
  end

  def is_valid?
    donations.sum(:amount) >= required_amount
  end

  private
  def notify_system
    if changes['enable']
      notifications.create(message: "vừa được khởi tạo")
    end
  end

  def check_over
    if success
      SendSmsWorker.new.perform(id)
      SendEmailEventCloseWorker.new.perform(id)
    end
  end

end
