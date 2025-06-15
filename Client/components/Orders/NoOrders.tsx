import React from 'react'
import Link from 'next/link'
import Image from 'next/image'
const NoOrders = () => {
  return (
    <section className="bg-white dark:bg-gray-900">
      <div className="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
        <div className="mx-auto max-w-screen-sm text-center">
          <h1 className="mb-4 text-7xl tracking-tight font-extrabold lg:text-5xl text-primary-600 dark:text-primary-500">Chưa có sản phẩm</h1>
          <p className="mb-4 text-3xl tracking-tight font-bold text-gray-900 md:text-4xl dark:text-white">Vui lòng mua sản phẩm để xem đơn hàng của bạn tại đây</p>
          <Link href="/" className="inline-flex text-white bg-primary-600 hover:bg-primary-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:focus:ring-primary-900 my-4">Quay về Trang chủ</Link>
          <Image alt='Người giao hàng với danh sách kiểm tra và kiện hàng' className='mx-auto' height={200} width={400} src='/deliveryguy.png' />
        </div>
      </div>
    </section>
  )
}

export default NoOrders