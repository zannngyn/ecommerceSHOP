import { checkSchema } from 'express-validator';
const productIDSchema = checkSchema({
    productID: {
        in: ['params'],
        errorMessage: 'Phải cung cấp productID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    }
});
const createReviewSchema = checkSchema({
    userID: {
        in: ['body'],
        errorMessage: 'Phải cung cấp userID',
        isInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        isNumeric: true,
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
    rating: {
        in: ['body'],
        isFloat: true,
        toFloat: true,
        errorMessage: 'Đánh giá phải là số nguyên',
        custom: {
            options: (value) => value >= 1 && value <= 5,
            errorMessage: 'Đánh giá phải từ 1 đến 5'
        }
    },
    title: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        isLength: { options: { min: 2, max: 50 } },
        escape: true,
        errorMessage: 'Tiêu đề phải là chuỗi không rỗng'
    },
    comment: {
        in: ['body'],
        isString: true,
        isLength: { options: { min: 2, max: 500 } },
        optional: true, // Allow comment to be optional
        errorMessage: 'Nội dung đánh giá phải là chuỗi',
        escape: true,
    }
});

const editReviewSchema = checkSchema({
    reviewID: {
        in: ['body'],
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
    rating: {
        in: ['body'],
        isFloat: true,
        toFloat: true,
        errorMessage: 'Đánh giá phải là số nguyên',
        custom: {
            options: (value) => value >= 1 && value <= 5,
            errorMessage: 'Đánh giá phải từ 1 đến 5'
        }
    },
    title: {
        in: ['body'],
        isString: true,
        notEmpty: true,
        isLength: { options: { min: 2, max: 50 } },
        errorMessage: 'Tiêu đề phải là chuỗi không rỗng',
        escape: true,
    },
    comment: {
        in: ['body'],
        isString: true,
        isLength: { options: { min: 2, max: 500 } },
        optional: true, // Allow comment to be optional
        errorMessage: 'Nội dung đánh giá phải là chuỗi',
        escape: true,
    }
});
const deleteReviewSchema = checkSchema({
    reviewID: {
        in: ['body'],
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
    }
});
const getReviewSchema = checkSchema({
    productID: {
        in: ['params'],
        errorMessage: 'Phải cung cấp productID chính xác',
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        notEmpty: true,
        trim: true,
        escape: true
    }
});
export { getReviewSchema, deleteReviewSchema, editReviewSchema, createReviewSchema, productIDSchema };