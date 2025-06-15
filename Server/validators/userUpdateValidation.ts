import { checkSchema } from "express-validator";
const customValidation = (value: any, { req, location, path }: { req: any, location: any, path: any }) => {
    if (value === 'false') {
        return true; // Skip validation if 'false'
    }
    return value; // Continue with other validations if not 'false'
};

const userUpdateSchema = checkSchema({
    userName: {
        in: ['body'],
        custom: {
            options: customValidation
        },
        isLength: { options: { min: 4, max: 64 } },
        escape: true,
        optional: { options: { nullable: true, checkFalsy: true } },
        isString: true,
        notEmpty: true,
        trim: true,
        errorMessage: 'Tên người dùng phải có ít nhất 4 ký tự'
    },
    email: {
        in: ['body'],
        custom: {
            options: customValidation
        },
        isLength: { options: { min: 5, max: 128 } },
        escape: true,
        isEmail: { bail: true },
        matches: { options: /[@]/ },
        notEmpty: true,
        isString: true,
        optional: { options: { nullable: true, checkFalsy: true } },
        trim: true,
        errorMessage: 'Email phải có ít nhất 5 ký tự'
    },
    password: {
        in: ['body'],
        custom: {
            options: customValidation
        },
        isLength: { options: { min: 8, max: 32 } },
        escape: true,
        notEmpty: true,
        isString: true,
        optional: { options: { nullable: true, checkFalsy: true } },
        trim: true,
        errorMessage: 'Mật khẩu phải có ít nhất 8 ký tự'
    },
    mobile_number: {
        in: ['body'],
        custom: {
            options: (value) => {
                if (value === 'false') {
                    return true; // Skip validation if 'false'
                } else if (/^\d{10}$/.test(value)) {
                    return true; // Valid 10-digit number
                }
                return false;
            },
            errorMessage: 'Số điện thoại phải là "false" hoặc gồm 10 chữ số hợp lệ'
        },
        optional: { options: { nullable: true, checkFalsy: true } },
        trim: true
    },
    dob: {
        in: ['body'],
        custom: {
            options: customValidation
        },
        isDate: true,
        optional: { options: { nullable: true, checkFalsy: true } },
        trim: true,
        errorMessage: 'Ngày sinh phải là một ngày hợp lệ'
    },
    userID: {
        in: ['body'],
        custom: {
            options: customValidation
        },
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        errorMessage: 'Phải cung cấp userID và hợp lệ'
    }
});
const AddressUpdateSchema = checkSchema({
    userID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    addressID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true,
        errorMessage: 'Phải cung cấp ID địa chỉ'
    },
    addressType: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 4, max: 4 } },
        trim: true,
        errorMessage: 'Loại địa chỉ phải là chuỗi không rỗng'
    },
    contactNumber: {
        in: ['body'],
        errorMessage: 'Số điện thoại phải gồm đúng 10 chữ số',
        isLength: { options: { min: 10, max: 10 } },
        escape: true,
        notEmpty: true,
        isInt: true,
        isMobilePhone: true,
        trim: true
    },
    addressLine1: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 2, max: 128 } },
        trim: true,
        errorMessage: 'Địa chỉ phải là chuỗi không rỗng'
    },
    addressLine2: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        optional: true,
        isLength: { options: { min: 2, max: 128 } },
        trim: true,
        errorMessage: 'Địa chỉ phải là chuỗi không rỗng'
    },
    city: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 2, max: 60 } },
        trim: true,
        errorMessage: 'Thành phố phải là chuỗi không rỗng'
    },
    state: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 2, max: 16 } },
        trim: true,
        errorMessage: 'Tỉnh/Thành phải là chuỗi không rỗng'
    },
    country: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 2, max: 56 } },
        trim: true,
        errorMessage: 'Quốc gia phải là chuỗi không rỗng'
    },
    postalCode: {
        in: ['body'],
        isPostalCode: {
            options: 'IN', // Change this to the appropriate locale
            errorMessage: 'Mã bưu chính không hợp lệ'
        },
        isInt: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 6, max: 8 } },
        trim: true,
        errorMessage: 'Mã bưu chính phải là chuỗi không rỗng'
    },
    userName: {
        in: ['body'],
        errorMessage: 'Tên người dùng phải có ít nhất 4 ký tự',
        isLength: { options: { min: 4, max: 64 } },
        escape: true,
        notEmpty: true,
        isString: true,
        trim: true
    },
});
const insertAddressSchema = checkSchema({
    addressType: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 4, max: 4 } },
        trim: true,
        errorMessage: 'Loại địa chỉ phải là chuỗi không rỗng'
    },
    contactNumber: {
        in: ['body'],
        isLength: { options: { min: 10, max: 10 } },
        escape: true,
        notEmpty: true,
        isInt: true,
        isMobilePhone: {
            options: 'any',
            errorMessage: 'Số điện thoại phải là số di động 10 chữ số hợp lệ'
        },
        trim: true
    },
    addressLine1: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 2, max: 128 } },
        trim: true,
        errorMessage: 'Địa chỉ dòng 1 phải là chuỗi không rỗng'
    },
    addressLine2: {
        in: ['body'],
        isString: true,
        optional: true,
        escape: true,
        isLength: { options: { min: 2, max: 128 } },
        trim: true,
        errorMessage: 'Địa chỉ dòng 2 phải là chuỗi không rỗng'
    },
    city: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 2, max: 60 } },
        trim: true,
        errorMessage: 'Thành phố phải là chuỗi không rỗng'
    },
    state: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 2, max: 16 } },
        trim: true,
        errorMessage: 'Tỉnh/Thành phải là chuỗi không rỗng'
    },
    country: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 2, max: 56 } },
        trim: true,
        errorMessage: 'Quốc gia phải là chuỗi không rỗng'
    },
    postalCode: {
        in: ['body'],
        isPostalCode: {
            options: 'IN',
            errorMessage: 'Mã bưu chính không hợp lệ'
        },
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 6, max: 8 } },
        trim: true,
        errorMessage: 'Mã bưu chính phải là chuỗi không rỗng'
    },
    userName: {
        in: ['body'],
        isLength: { options: { min: 4, max: 64 } },
        escape: true,
        notEmpty: true,
        isString: true,
        trim: true,
        errorMessage: 'Tên người dùng phải có ít nhất 4 ký tự'
    },
    userID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
});
const defaultUpdateSchema = checkSchema({
    addressID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true,
        errorMessage: 'ID địa chỉ phải là số nguyên'
    },
    userID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true,
        errorMessage: 'UserID phải là số nguyên'
    }
});
const cartQtyUpdate = checkSchema({
    cartItemID: {
        in: ['body'],
        errorMessage: 'Phải cung cấp cartItemID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    productID: {
        in: ['body'],
        errorMessage: 'Phải cung cấp productID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    userID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true,
        errorMessage: 'UserID phải là số nguyên'
    },
    action: {
        in: ['body'],
        isString: true,
        isLength: { options: { min: 9, max: 9 } },
        notEmpty: true,
        trim: true,
        escape: true,
        custom: {
            options: (value) => value === 'increment' || value === 'decrement',
            errorMessage: 'Giá trị phải là increment hoặc decrement'
        },
        errorMessage: 'UserID phải là số nguyên'
    }
})
export { defaultUpdateSchema, AddressUpdateSchema, insertAddressSchema, userUpdateSchema, cartQtyUpdate }