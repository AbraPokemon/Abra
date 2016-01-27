class Event < ActiveRecord::Base
  geocoded_by :location   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  after_update :notify_system

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

  private
  def notify_system
    if changes['enable']
      notifications.create(message: "vừa được khởi tạo")
    end
  end

end
