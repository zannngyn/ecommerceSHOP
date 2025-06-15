import { checkSchema } from "express-validator";


const contactSchema = checkSchema({
    name: {
        in: ['body'],
        errorMessage: 'Tên người dùng phải có ít nhất 4 ký tự',
        isLength: { options: { min: 4, max: 64 } },
        escape: true,
        notEmpty: true,
        isString: true,
        trim: true
    },
    email: {
        in: ['body'],
        isLength: { options: { min: 5, max: 128 } },
        escape: true,
        isEmail: { bail: true },
        matches: { options: /[@]/ },
        notEmpty: true,
        isString: true,
        trim: true
    },
    phone: {
        in: ['body'],
        errorMessage: 'Số điện thoại phải gồm đúng 10 chữ số',
        isLength: { options: { min: 10, max: 10 } },
        escape: true,
        notEmpty: true,
        isInt: true,
        isMobilePhone: true,
        trim: true
    },
    method: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        isIn: {
            options: [['email', 'phone']],
            errorMessage: 'Phương thức phải là một trong: email, phone'
        },
        escape: true,
        errorMessage: 'Phương thức phải là chuỗi không rỗng'
    },
    message: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        isLength: { options: { min: 0, max: 1500 } },
        escape: true,
        errorMessage: 'Nội dung phải là chuỗi không rỗng'
    }
});
export { contactSchema }