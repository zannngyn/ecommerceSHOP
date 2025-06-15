import { checkSchema } from 'express-validator'
const signUpSchema = checkSchema({
    userName: {
        errorMessage: 'Tên người dùng phải có ít nhất 4 ký tự',
        isLength: { options: { min: 4, max: 64 } },
        escape: true,
        notEmpty: true,
        isString: true,
        trim: true
    },
    email: {
        errorMessage: 'Email phải có ít nhất 5 ký tự',
        isLength: { options: { min: 5, max: 128 } },
        escape: true,
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
    mobile_number: {
        errorMessage: 'Số điện thoại phải gồm đúng 10 chữ số',
        isLength: { options: { min: 10, max: 10 } },
        escape: true,
        notEmpty: true,
        isInt: true,
        isMobilePhone: true,
        trim: true
    },
    dob: {
        errorMessage: 'Ngày sinh phải gồm đúng 10 ký tự (DD-MM-YYYY)',
        isLength: { options: { min: 10, max: 10 } },
        matches: { options: /[-]/ },
        escape: true,
        notEmpty: true,
        isString: true,
        isDate: true,
        trim: true
    },
    promotional: {
        errorMessage: 'Tham số promotional phải là true hoặc false',
        notEmpty: { bail: true },
        escape: true,
        isString: true,
        isLength: { options: { min: 4, max: 5 } },
        trim: true
    }
}, ['body', 'params']);
const signInSchema = checkSchema({
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
    remember: {
        errorMessage: 'Tham số remember phải là true hoặc false',
        notEmpty: { bail: true },
        escape: true,
        isString: true,
        isLength: { options: { min: 4, max: 5 } },
        trim: true
    }
}, ['body', 'params']);
const tokenSchema = checkSchema({
    token: {
        errorMessage: 'Phải cung cấp token',
        notEmpty: { bail: true },
        isJWT: { bail: true },
        escape: true,
    }
}, ['body']);
const googleAuthSchema = checkSchema({
    code: {
        errorMessage: 'Phải cung cấp mã',
        isString: true,
        exists: true,
        trim: true,
    }
}, ['body']);
const googleAuthSchemaNative = checkSchema({
    email: {
        errorMessage: 'Phải cung cấp email',
        isString: true,
        exists: true,
        trim: true,
        isEmail: true,
        matches: { options: /[@]/ },
    }
}, ['body']);
export { signInSchema, signUpSchema, tokenSchema, googleAuthSchema, googleAuthSchemaNative }