Event.destroy_all
Comment.destroy_all
User.destroy_all

Category.destroy_all

category_education =  Category.create(name: 'Khuyến học', image_url: 'http://placehold.it/150x150.png/000', enable: true);
category_animal =  Category.create(name: 'Bảo tồn động vật', image_url: 'http://placehold.it/150x150.png/000', enable: true);
category_social =  Category.create(name: 'Xã hội', image_url: 'http://placehold.it/150x150.png/000', enable: true);
category_environment =  Category.create(name: 'Môi trường', image_url: 'http://placehold.it/150x150.png/000', enable: true);

user = User.create(
  email: 'abra@abra.com',
  password: '12345678',
  full_name: 'AbraUser',
  avatar_url: "https://robohash.org/sitsequiquia.png?size=300x300",
  bio: "A fancy User",
  location: "Ho Chi Minh",
  website: "www.abracharity.com",
  confirmed_at: Time.current
)

another_user = User.create(
  email: 'abra1@abra.com',
  password: '12345678',
  full_name: 'AbraUser1',
  avatar_url: "https://robohash.org/sitsequiquia.png?size=300x300",
  bio: "A fancy User",
  location: "Ho Chi Minh",
  website: "www.abracharity.com",
  confirmed_at: Time.current
)

p "Create User[email: #{user.email}, password: #{user.password}]"
user_admin = User.create(
  email: 'admin@abra.com',
  password: '12345678',
  full_name: 'AbraAdmin',
  confirmed_at: Time.current,
  admin: true
)

IMAGE_URLS = [ 
  'https://platoshrugs.files.wordpress.com/2015/09/charity.jpg',
  'http://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2014/12/12/102264730-charity.1910x1000.jpg',
  'http://donandmerit.com/wp-content/uploads/2013/11/170742v2.jpg',
  'https://richardhutton.files.wordpress.com/2015/07/charity_20cm.jpg',
  'http://www.greenbuildingpress.co.uk/images/articles/large/Dogs.jpg'
]

(1..50).each do |i| 
  event = Event.create(
    name: Faker::Lorem.words(4).join(" "),
    location: Faker::Lorem.sentence,
    lat: Faker::Address.latitude,
    lng: Faker::Address.longitude,
    start_at: Faker::Date.between(5.days.ago, Date.today),
    donation_due_date: Faker::Date.between(Date.today, 10.days.from_now),
    short_description: Faker::Lorem.paragraph,
    story: Faker::Lorem.paragraphs.join("\n"),
    number_of_participant: "",
    required_amount: Faker::Number.between(1000000, 10000000),
    thumbnail_url: IMAGE_URLS.sample,
    category: Category.all.sample,
    enable: true,
    user: user
  )
  donate = Donation.create(
    donatable: event,
    donor: another_user,
    amount: Faker::Number.number(6)
  )
  vote = Vote.create(
    votable: event,
    voter: another_user
  )
end


