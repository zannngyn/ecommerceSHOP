import React, { useEffect } from 'react'
import { Description, Dialog, DialogPanel, DialogTitle } from '@headlessui/react'
import { useApp } from '@/Helpers/AccountDialog';
import { useRouter } from 'next/navigation'
const DialogBoxes = () => {
    const router = useRouter()
    const { toggleAgreement, toggleIsOpenAgreement, appState, toggleIsPassword, toggleBackgroundBlur, toggleServerError, toggleIsExists, toggleIsIncorrect } = useApp();
    // useEffect(() => {
    //     const valuesToExclude = ['agreement', 'updates','loggedIn','backgroundBlur']; // Example keys to exclude
    //     const filteredValues = Object.entries(appState)
    //         .filter(([key]) => !valuesToExclude.includes(key))
    //         .map(([, value]) => value);

    //     const anyTrue = filteredValues.some(value => value === true);
    //     if (anyTrue) {
    //         toggleBackgroundBlur();
    //     }
    // }, [appState]);
    return (
        <>
            <Dialog open={appState.isOpenAgreement} onClose={() => toggleIsOpenAgreement()} className="relative z-50">
                <div className="fixed inset-0 flex w-screen items-center justify-center p-4">
                    <DialogPanel className="max-w-lg space-y-4 border bg-white p-8 rounded-xl text-center">
                        <DialogTitle className="font-bold">Thỏa thuận đăng ký</DialogTitle>
                        <Description>Bằng cách đăng ký, bạn đang tạo tài khoản H-Comm và bạn đồng ý với <a className='text-primary-700 font-medium' href='/policy/terms&conditions'>Điều khoản & Điều kiện</a> và <a className='text-primary-700 font-medium' href='/policy/privacypolicy'>Chính sách bảo mật</a> của H-Comm.</Description>
                        <div className="flex justify-center gap-4">
                            <button className='border-[1.5px] hover:bg-black transition-colors duration-300 hover:text-white py-2 px-6 rounded-xl' onClick={() => toggleIsOpenAgreement}>Hủy</button>
                            <button className='bg-primary-600 text-white py-2 hover:bg-primary-800 transition-colors duration-300 px-8 rounded-xl' onClick={() => { toggleIsOpenAgreement(); toggleAgreement(); }}>Chấp nhận</button>
                        </div>
                    </DialogPanel>
                </div>
            </Dialog>
            <Dialog open={appState.isPassword} onClose={() => toggleIsPassword()} className="relative z-50">
                <div className="fixed inset-0 flex w-screen items-center justify-center p-4">
                    <DialogPanel className="max-w-lg space-y-4 border bg-white p-12 rounded-xl text-center drop-shadow-custom-xl">
                        <DialogTitle className="font-bold">Mật khẩu</DialogTitle>
                        <Description>Mật khẩu không khớp. Vui lòng thử lại.</Description>
                        <div className="flex justify-center gap-4">
                            <button className='border-[1.5px] hover:bg-black transition-colors duration-300 hover:text-white py-2 px-6 rounded-xl' onClick={() => toggleIsPassword()}>Đồng ý</button>
                        </div>
                    </DialogPanel>
                </div>
            </Dialog>
            <Dialog open={appState.serverError} onClose={() => toggleServerError()} className="relative z-50">
                <div className="fixed inset-0 flex w-screen items-center justify-center p-4">
                    <DialogPanel className="max-w-lg space-y-4 border  p-6 rounded-xl text-center drop-shadow-custom-xl bg-red-400 text-white">
                        <DialogTitle className="font-bold">Lỗi</DialogTitle>
                        <Description>Hiện đang có sự cố. Vui lòng thử lại sau.</Description>
                        <div className="flex justify-center gap-4">
                            <button className='border-[1.5px] hover:bg-white transition-colors duration-300 hover:text-black py-2 px-6 rounded-xl' onClick={() => toggleServerError()}>Đồng ý</button>
                        </div>
                    </DialogPanel>
                </div>
            </Dialog>
            <Dialog open={appState.isExists} onClose={() => toggleIsExists()} className="relative z-50">
                <div className="fixed inset-0 flex w-screen items-center justify-center p-4">
                    <DialogPanel className="max-w-lg space-y-4 border bg-white p-8 rounded-xl text-center">
                        <DialogTitle className="font-bold">Tài khoản đã tồn tại</DialogTitle>
                        <Description>Tài khoản với email hoặc số điện thoại này đã tồn tại</Description>
                        <p>Bạn có muốn đăng nhập không?</p>
                        <div className="flex justify-center gap-4">
                            <button className='border-[1.5px] hover:bg-black transition-colors duration-300 hover:text-white py-2 px-6 rounded-xl' onClick={() => toggleIsExists()}>Đồng ý</button>
                            <button className='bg-primary-600 text-white py-2 hover:bg-primary-800 transition-colors duration-300 px-8 rounded-xl' onClick={() => { toggleIsExists(); router.push('/sign-in') }}>Đăng nhập</button>
                        </div>
                    </DialogPanel>
                </div>
            </Dialog>
            <Dialog open={appState.isIncorrect} onClose={() => toggleIsIncorrect()} className="relative z-50">
                <div className="fixed inset-0 flex w-screen items-center justify-center p-4">
                    <DialogPanel className="max-w-lg space-y-4 border bg-white p-12 rounded-xl text-center drop-shadow-custom-xl">
                        <DialogTitle className="font-bold">Thông tin đăng nhập không đúng</DialogTitle>
                        <Description>Email hoặc mật khẩu không đúng. Vui lòng kiểm tra lại.</Description>
                        <div className="flex justify-center gap-4">
                            <button className='border-[1.5px] hover:bg-black transition-colors duration-300 hover:text-white py-2 px-6 rounded-xl' onClick={() => toggleIsIncorrect()}>Đồng ý</button>
                        </div>
                    </DialogPanel>
                </div>
            </Dialog>
        </>
    )
}

export default DialogBoxes