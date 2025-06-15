import { checkSchema } from 'express-validator';
const orderCreationSchema = checkSchema({
    userid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp userID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    productid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp productID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    colorid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp colorID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    sizeid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp sizeID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    }
});
const orderCreationSchema2 = checkSchema({
    userid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp userID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    },
    productid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp productID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    colorid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp colorID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    sizeid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp sizeID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    paymentid: {
        in: ['body'],
        errorMessage: 'Phải cung cấp paymentID',
        isLength: { options: { min: 1, max: 255 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    paymentStatus: {
        in: ['body'],
        errorMessage: 'Phải cung cấp paymentStatus chính xác',
        isString: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    }
});
const OrderIDSchema = checkSchema({
    orderID: {
        in: ['params'],
        errorMessage: 'Phải cung cấp productID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 15 } },
        notEmpty: true,
        trim: true,
        escape: true
    }
});
const checkoutSchema = checkSchema({
    productid: {
        in: ['params'],
        errorMessage: 'Phải cung cấp productID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    sizeid: {
        in: ['params'],
        errorMessage: 'Phải cung cấp sizeID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    },
    colorid: {
        in: ['params'],
        errorMessage: 'Phải cung cấp colorID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    }
});
const createPaymentIntent = checkSchema({
    item: {
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
        errorMessage: 'Phải cung cấp userID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true,
        escape: true
    }
});
export { orderCreationSchema, orderCreationSchema2, checkoutSchema, OrderIDSchema, createPaymentIntent }