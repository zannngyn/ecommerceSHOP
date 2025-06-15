import React from 'react'
import Image from 'next/image'
import Link from 'next/link'
const NoProduct = () => {
  return (
    <section className="bg-white dark:bg-gray-900">
      <div className="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
        <div className="mx-auto max-w-screen-sm text-center">
          <h1 className="mb-4 text-4xl tracking-tight font-extrabold lg:text-4xl text-primary-600 dark:text-primary-500">Không có sản phẩm</h1>
          <p className="mb-4 text-2xl tracking-tight font-bold text-gray-900 md:text-3xl dark:text-white">Chúng tôi đang nỗ lực thêm nhiều sản phẩm vào danh mục. Bạn có thể tìm sản phẩm ở các danh mục khác hoặc quay lại trang chủ.</p>
          <Link href="/" className="inline-flex text-white bg-primary-600 hover:bg-primary-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:focus:ring-primary-900 my-4">Quay về trang chủ</Link>
          <Image alt='Xe tải chở hàng' className='mx-auto' height={200} width={400} src='/deliveryboxes.png' />
        </div>
      </div>
    </section>
  )
}

export default NoProduct