import React from 'react'
import formatDate from '@/app/api/dateConvert';
interface UserCoupon {
  couponid: number;
  code: string;
  description: string;
  discountpercentage: number;
  maxdiscountamount: number;
  minpurchaseamount: number;
  validuntil: string;
}
const Coupons = ({ Component }: { Component: UserCoupon[] }) => {
  return (
    <div className='w-full h-full py-4 px-4 overflow-auto'>
      <h1 className='text-xl font-semibold'>Mã giảm giá</h1>
      <div className='flex flex-col'>
        {Component.map((each, index) =>
          <div key={index} className='flex flex-col gap-4 py-2 px-2'>
            <div className='text-sm font-medium flex flex-col gap-1 drop-shadow-custom-xl bg-white px-4 py-4 rounded-xl'>
              <div className='flex justify-between'>
                <p className='text-green-400'>Tối đa ${each.maxdiscountamount}/{Math.round(each.discountpercentage)}%</p>
                <p className='text-silver'>Hạn dùng đến {formatDate(each.validuntil)}</p>
              </div>
              <div>
                <div className='flex justify-between gap-2'>
                  <p>{each.description}</p>
                  <p>{'('}Hoá đơn tối thiểu áp dụng: {each.minpurchaseamount}{')'}</p>
                </div>
                <p className='text-primary-800'>{each.code}</p>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  )
}

export default Coupons