User.destroy_all
Category.destroy_all

category_education =  Category.create(name: 'Khuyến học', image_url: 'http://placehold.it/150x150.png/000', enable: true);
category_animal =  Category.create(name: 'Bảo tồn động vật', image_url: 'http://placehold.it/150x150.png/000', enable: true);
category_social =  Category.create(name: 'Xã hội', image_url: 'http://placehold.it/150x150.png/000', enable: true);
category_environment =  Category.create(name: 'Môi trường', image_url: 'http://placehold.it/150x150.png/000', enable: true);

RANDOM_POSTION = [ [10.814731, 106.711331], [10.804569, 106.669021], [10.779089, 106.692624], [10.804478, 106.716622]]

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

event1 = Event.create(
  name: Faker::Lorem.words(4).join(" "),
  latitude: RANDOM_POSTION[1][0],
  longitude: RANDOM_POSTION[1][1],
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
if event1.enable
  donate = Donation.create(
    donatable: event1,
    donor: another_user,
    amount: Faker::Number.number(6)
  )
  vote = Vote.create(
    votable: event1,
    voter: another_user
  )
end


event2 = Event.create(
  name: Faker::Lorem.sentence,
  latitude: RANDOM_POSTION[0][0],
  longitude: RANDOM_POSTION[0][1],
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
if event2.enable
  donate = Donation.create(
    donatable: event2,
    donor: another_user,
    amount: Faker::Number.number(6)
  )
  vote = Vote.create(
    votable: event2,
    voter: another_user
  )
end

event3 = Event.create(
  name: Faker::Lorem.sentence,
  latitude: RANDOM_POSTION[2][0],
  longitude: RANDOM_POSTION[2][1],
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
if event3.enable
  donate = Donation.create(
    donatable: event3,
    donor: another_user,
    amount: Faker::Number.number(6)
  )
  vote = Vote.create(
    votable: event3,
    voter: another_user
  )
end

event4 = Event.create(
  name: Faker::Lorem.sentence,
  latitude: RANDOM_POSTION[3][0],
  longitude: RANDOM_POSTION[3][1],
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
if event4.enable
  donate = Donation.create(
    donatable: event4,
    donor: another_user,
    amount: Faker::Number.number(6)
  )
  vote = Vote.create(
    votable: event4,
    voter: another_user
  )
end

(1..40).each do |i| 
  event = Event.create(
    name: Faker::Lorem.words(4).join(" "),
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    start_at: Faker::Date.between(5.days.ago, Date.today),
    donation_due_date: Faker::Date.between(Date.today, 10.days.from_now),
    short_description: Faker::Lorem.paragraph,
    story: Faker::Lorem.paragraphs.join("\n"),
    number_of_participant: "",
    required_amount: Faker::Number.between(1000000, 10000000),
    thumbnail_url: IMAGE_URLS.sample,
    category: Category.all.sample,
    enable: [false,true].sample,
    user: user
  )
  if event.enable
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
end


