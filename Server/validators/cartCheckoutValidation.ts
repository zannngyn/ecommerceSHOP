import { checkSchema } from 'express-validator';
const userIDSchema = checkSchema({
    userID: {
        errorMessage: 'Phải cung cấp userID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true
    }
}, ['body', 'params']);
const paymentCreationSchema = checkSchema({
    userID: {
        errorMessage: 'Phải cung cấp userID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
        trim: true
    },
    paymentid: {
        errorMessage: 'Phải cung cấp paymentID',
        isString: true,
        isLength: { options: { min: 1, max: 255 } },
        notEmpty: true,
        trim: true
    },
    paymentstatus: {
        errorMessage: 'Phải cung cấp paymentStatus chính xác',
        isString: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true
    }
}, ['body']);
export { userIDSchema, paymentCreationSchema }