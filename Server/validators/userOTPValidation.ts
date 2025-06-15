import { checkSchema } from "express-validator";

const EmailSchema = checkSchema({
    email: {
        errorMessage: 'Email phải có ít nhất 5 ký tự',
        escape: true,
        isLength: { options: { min: 5, max: 128 } },
        isEmail: { bail: true },
        matches: { options: /[@]/ },
        notEmpty: true,
        isString: true,
        trim: true
    },
});
const EmailPasswordOtpSchema = checkSchema({
    email: {
        errorMessage: 'Email phải có ít nhất 5 ký tự',
        escape: true,
        isLength: { options: { min: 5, max: 128 } },
        isEmail: { bail: true },
        matches: { options: /[@]/ },
        notEmpty: true,
        isString: true,
        trim: true
    },
    password: {
        errorMessage: 'Mật khẩu phải có ít nhất 8 ký tự',
        isLength: { options: { min: 8, max: 32 } },
        escape: true,
        notEmpty: true,
        isString: true,
        trim: true
    },
    otp: {
        in: ['body'],
        isString: true,
        isLength: {
            options: { min: 4, max: 4 },
            errorMessage: 'OTP phải gồm đúng 4 chữ số'
        },
        errorMessage: 'OTP phải là số nguyên 4 chữ số',
    }
});

export { EmailSchema, EmailPasswordOtpSchema };