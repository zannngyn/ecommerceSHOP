import React from 'react'
import ContactForm from './ContactForm'

const Contact = () => {
    return (
        <div className='border-t-[1px]'>
            <div className="container mx-auto px-4 py-8 w-[80%] border-[1px] rounded-xl mt-5">
                <h1 className="text-4xl font-bold border-b-[1px] border-gray-300 pb-2 mb-8">Liên hệ</h1>

                <section className="mb-8">
                    <p className='max-w-[1000px]'>Chúng tôi luôn sẵn sàng hỗ trợ! Tại Ecommerce, chúng tôi đánh giá cao giao tiếp cởi mở và cam kết mang đến cho bạn dịch vụ tốt nhất. Cho dù bạn có thắc mắc, cần trợ giúp hay muốn góp ý, chúng tôi rất mong bạn liên hệ với chúng tôi.</p>
                </section>

                <section className="mb-8 flex flex-col gap-5">
                    <h2 className="text-2xl font-semibold mb-2">Cách liên hệ với chúng tôi</h2>
                    <div>
                        <h3 className="text-xl font-semibold mb-1">Hỗ trợ khách hàng:</h3>
                        <p className='max-w-[1000px]'>Đội ngũ hỗ trợ khách hàng của chúng tôi sẵn sàng giải đáp mọi thắc mắc của bạn. Bạn có thể liên hệ qua các phương thức sau:</p>
                    </div>
                    <div>
                        <h4 className="text-lg font-semibold mb-1">Email:</h4>
                        <p>Để hỏi chung, tình trạng đơn hàng và hỗ trợ:
                            <a href="mailto:zanngyn@gmail.com" className="text-blue-500">zanngyn@gmail.com</a>
                        </p>
                        <p>Đối với hoàn trả và hoàn tiền:
                            <a href="mailto:zanngyn@gmail.com" className="text-blue-500">zanngyn@gmail.com</a>
                        </p>
                    </div>
                    <div>
                        <h4 className="text-lg font-semibold mb-1">Mạng xã hội:</h4>
                        <p className='max-w-[1000px]'>Kết nối với chúng tôi trên mạng xã hội để cập nhật tin tức, khuyến mãi và hỗ trợ:</p>
                        <ul className="list-disc list-inside ml-4">
                            <li><a href="https://www.facebook.com/" className="text-blue-500" target="_blank">Facebook</a></li>
                            <li><a href="https://www.twitter.com/" className="text-blue-500" target="_blank">Twitter</a></li>
                            <li><a href="https://www.instagram.com/" className="text-blue-500" target="_blank">Instagram</a></li>
                        </ul>
                    </div>
                </section>

                <section className="mb-8">
                    <h2 className="text-2xl font-semibold mb-2">Các câu hỏi thường gặp (FAQ)</h2>
                    <p>Để có câu trả lời nhanh cho các câu hỏi thường gặp, hãy truy cập trang <a href="#" className="text-blue-500">FAQ</a> của chúng tôi. Bạn có thể tìm thấy thông tin mà không cần chờ phản hồi.</p>
                </section>

                <section className="mb-8">
                    <h2 className="text-2xl font-semibold mb-2">Phản hồi</h2>
                    <p className='max-w-[1000px]'>Chúng tôi luôn tìm cách cải thiện và rất mong nhận được ý kiến của bạn. Cho dù về sản phẩm, dịch vụ hay trang web, phản hồi của bạn vô cùng quý giá. Vui lòng gửi bình luận và đề xuất đến <a href="mailto:feedback@yourwebsite.com" className="text-blue-500">feedback@yourwebsite.com</a>.</p>
                </section>

                <section className="mb-8">
                    <h2 className="text-2xl font-semibold mb-2">Trung tâm trợ giúp</h2>
                    <p className='max-w-[1000px]'>Khám phá <a href="#" className="text-blue-500">Trung tâm trợ giúp</a> của chúng tôi để xem hướng dẫn chi tiết, cách thực hiện và mẹo xử lý sự cố. Đây là tài nguyên toàn diện hỗ trợ bạn từ cài đặt tài khoản đến theo dõi đơn hàng.</p>
                </section>
                <p>Cảm ơn bạn đã chọn Ecommerce. Chúng tôi mong được hỗ trợ bạn!</p>
            </div>
            <ContactForm />
        </div>
    )
}

export default Contact