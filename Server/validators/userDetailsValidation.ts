import { checkSchema } from "express-validator";
const userIDSchema = checkSchema({
    userID: {
        errorMessage: 'Phải cung cấp userID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    }
}, ['body', 'params']);
const userTokenSchema = checkSchema({
    userIDToken: {
        errorMessage: 'Phải cung cấp token',
        notEmpty: { bail: true },
        isJWT: { bail: true },
        escape: true,
    }
}, ['body']);

const AddressInsertSchema = checkSchema({
    userID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
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
    userName: {
        in: ['body'],
        errorMessage: 'Tên người dùng phải có ít nhất 4 ký tự',
        isLength: { options: { min: 4, max: 64 } },
        escape: true,
        notEmpty: true,
        isString: true,
        trim: true
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
        isPostalCode: true,
        isString: true,
        notEmpty: true,
        escape: true,
        isLength: { options: { min: 6, max: 8 } },
        trim: true,
        errorMessage: 'Mã bưu chính phải là chuỗi không rỗng'
    },
});
const cartItemSchema = checkSchema({
    userID: {
        in: ['body'],
        isInt: true,
        errorMessage: 'Phải cung cấp userID',
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    productID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 15 } },
        errorMessage: 'Phải cung cấp productID',
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    quantity: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 2 } },
        errorMessage: 'Phải cung cấp số lượng',
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    sizeID: {
        in: ['body'],
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        errorMessage: 'Phải cung cấp sizeID',
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    colorID: {
        in: ['body'],
        isInt: true,
        errorMessage: 'Phải cung cấp colorID',
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    }
});
const cartActionSchema = checkSchema({
    userID: {
        in: ['body'],
        isInt: true,
        errorMessage: 'Phải cung cấp userID',
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    cartItemID: {
        in: ['body'],
        errorMessage: 'Phải cung cấp cartItemID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    }
});
const wishlistActionSchema = checkSchema({
    userID: {
        in: ['body'],
        isInt: true,
        errorMessage: 'Phải cung cấp wishlistItemID',
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    wishlistItemID: {
        in: ['body'],
        isInt: true,
        errorMessage: 'Phải cung cấp wishlistItemID',
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    productID: {
        in: ['body'],
        errorMessage: 'Phải cung cấp productID',
        isInt: true,
        isLength: { options: { min: 1, max: 15 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    }
});
const wishlistRemoveSchema = checkSchema({
    userID: {
        in: ['body'],
        errorMessage: 'Phải cung cấp wishlistID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    wishlistItemID: {
        in: ['body'],
        errorMessage: 'Phải cung cấp wishlistID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    }
});
const orderSchema = checkSchema({
    userIDToken: {
        in: ['params'],
        errorMessage: 'Phải cung cấp token',
        notEmpty: { bail: true },
        isJWT: { bail: true },
        escape: true,
    },
    orderID: {
        in: ['params'],
        isInt: true,
        errorMessage: 'Phải cung cấp orderID',
        isLength: { options: { min: 1, max: 15 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    }
});

export { userIDSchema, userTokenSchema, AddressInsertSchema, cartActionSchema, cartItemSchema, wishlistActionSchema, wishlistRemoveSchema, orderSchema };