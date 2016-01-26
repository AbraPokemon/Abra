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
p "Create User[email: #{user.email}, password: #{user.password}]"

donate = Donation.create(
  donatable_id: 1,
  donatable_type: "Event",
  donor_id: 1,
  donor_type: "User"
)

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
    thumbnail_url: "https://richardhutton.files.wordpress.com/2015/07/charity_20cm.jpg",
    category: Category.all.sample,
    user: user
  )
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
