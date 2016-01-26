User.destroy_all
Event.destroy_all
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

event = Event.create(
  name: "HỖ TRỢ TẠO NHỊP CUỘC SỐNG",
  location: "1 Nguyễn Huệ, Hồ Chí Minh, Việt Nam",
  start_at: 2.days.ago,
  short_description: "Trường hợp anh Hồ Văn Chiến ( 1988) quê ở An Giang, tạm trú và làm công nhân cho một công ty nhựa tại Bình Dương, là lao động chính trong gia đình nuôi hai ba mẹ đã già yếu với mức lương 3.500.000 đồng/ tháng.",
  story: "Theo bác sỹ điều trị cho biết anh bị suy tim nặng cần phải phẫu thuật lắp máy tạo nhịp tim gấp nếu không khả năng tử vong rất cao…..
 Trường hợp anh Hồ Văn Chiến ( 1988) quê ở An Giang, tạm trú và làm công nhân cho một công ty nhựa tại Bình Dương, là lao động chính trong gia đình nuôi hai ba mẹ đã già yếu với mức lương 3.500.000 đồng/ tháng. Anh đang  cố gắng dành dụm, tích góp với dự định sang năm sau sẽ lập gia đình yên bề gia thất để ba mẹ già vui lòng an hưởng tuổi già. Ở quê, ba mẹ anh dù già yếu nhưng vẫn đi làm ruộng mướn và cắt cỏ thuê kiếm thêm ít thu nhập phụ giúp cùng người con trai.
Một lần trong khi đang làm việc tại công ty anh bị xỉu được anh em công nhân làm cùng đưa vào bệnh viện đa khoa tỉnh Bình Dương cấp cứu, sau đó anh được chỉ định nhập viện để điều trị và được chuẩn đoán bị bệnh viêm gan và bệnh tim, do bệnh có chiều hướng ngày càng nặng nên vào đầu tháng 12 vừa qua anh được chuyển lên bệnh viện Chợ Rẫy để tiếp tục điều trị. Từ lúc nhập viện, anh không có khoản thu nhập nào, mọi khoản chi phí điều trị đều phải trông chờ vào tiền công làm mướn ba mẹ già, đồng thời nhờ anh em họ hàng hỗ trợ và vay mượn để đóng tạm ứng viện phí. Từ ngày anh nhập viện ba mẹ anh phần vì già yếu, phần phải ở nhà lo chạy vay mượn, ai có thể cho vay ba mẹ anh đều gõ cửa với hy vọng được đồng nào hay đồng ấy gửi lên đóng viện phí cho con, nên mọi việc chăm sóc, lo lắng cho anh ở bệnh viện gia đình đành trông cậy cả vào người dì.
Theo bác sỹ điều trị cho biết anh bị suy tim nặng cần phải phẫu thuật lắp máy tạo nhịp tim gấp nếu không khả năng tử vong rất cao. Anh có BHYT doanh nghiệp đi đúng tuyến được BHYT chi trả 80% nên khoản chi phí điều trị và khoản tiền mua hai sợi dây gắn vào máy tạo nhịp tim cũng đỡ đi được phần nào. Nhưng sau khi trừ chi phí BHYT chi trả chi phí phía gia đình chi trả cũng rất lớn lên tới 20.000.000 đồng, chưa kể khoản chi phí máy tạo nhịp đã được phía bệnh viện hứa sẽ hỗ trợ. Hiện tại cộng cả khoản vay mượn và nhờ anh em bà con hỗ trợ gia đình đã đóng được 37.000.000 đồng bao gồm 24.000.000 đồng tiền đóng tạm ứng chi phí chữa trị trong thời gian  nằm viện vừa qua và 13.000.000 đồng tiền đóng tạm ứng để mua dây lắp máy tạo nhịp tim nhưng vẫn còn thiếu 7.000.000 đồng gia đình không còn khả năng vay mượn và không biết xoay sở ở đâu.
Nhận được thông tin từ Phòng công tác xã hội – Bệnh viện Chợ Rẫy Quỹ  từ thiện tình thương đã cử điều phối viên đến xác minh thông tin và hỗ trợ anh Chiến 7.000.000 đồng số tiền còn thiếu để mua dây lăp máy tạo nhịp tim để anh sớm được phẫu thuật.

Mọi đóng góp cho anh Hồ Văn Chiến xin liên hệ trực tiếp số điện thoại : 0939.473.956 – cô Nhiên (người dì đang trực tiếp chăm sóc cho anh Chiến) hoặc Quỹ Từ Thiện Tình Thương – số 15 Mai Thị Lựu, P.Đa Kao, Q1, TP.HCM - ĐT: (08) 39107612/ Số tài khoản VNĐ: 31010001023337; Số tài khoản USD: 31010370035360 tại Ngân hàng BIDV - Chi nhánh TP. HCM.


Cập nhật: Đến ngày  05/01/2016, Dự án trợ giúp y tế của Quỹ từ thiện Tình Thương đã trợ giúp 189  trường hợp khó khăn, y tế với số tiền tổng cộng 1.220.187.000đ  và 1.129.643 suất ăn giá rẻ bao gồm 994.899 suất cơm 2.000đ và 134.744 món nước 1.000đ.",
  number_of_participant: "",
  required_amount: "20000000",
  donation_due_date: 4.days.from_now,
  thumbnail_url: "https://richardhutton.files.wordpress.com/2015/07/charity_20cm.jpg",
  category: category_social,
  user: user
)

p "create event[name: #{event.name}]"

donate = Donation.create(
  donatable_id: 1,
  donatable_type: "Event",
  donor_id: 1,
  donor_type: "User"
)

(1..50).each do |i| 
  Event.create(
    name: Faker::Lorem.words(4).join(" "),
    location: Faker::Lorem.sentence,
    start_at: Faker::Date.between(5.days.ago, Date.today),
    donation_due_date: Faker::Date.between(Date.today, 10.days.from_now),
    short_description: Faker::Lorem.paragraph,
    story: Faker::Lorem.paragraphs.join("\n"),
    number_of_participant: "",
    required_amount: Faker::Number.between(1000000, 10000000),
    thumbnail_url: "https://richardhutton.files.wordpress.com/2015/07/charity_20cm.jpg",
    category_id: Faker::Number.between(1, 4),
    user: user
  )
end

