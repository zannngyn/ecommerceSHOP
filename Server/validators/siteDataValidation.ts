import { checkSchema } from 'express-validator';
const categorySchema = checkSchema({
    category: {
        in: ['params'],
        isString: true,
        notEmpty: true,
        toUpperCase: true,
        isLength: { options: { min: 3, max: 50 } },
        errorMessage: 'Danh mục phải là chuỗi không rỗng'
    }
});
const filterSchema = checkSchema({
    minPrice: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        errorMessage: 'Giá tối thiểu phải là số thực'
    },
    maxPrice: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        errorMessage: 'Giá tối đa phải là số thực'
    },
    categoryID: {
        in: ['params'],
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 50 } },
        errorMessage: 'Category ID phải là số nguyên'
    },
    minRating: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        custom: {
            options: (value) => value >= 0 && value <= 5,
            errorMessage: 'Đánh giá tối thiểu phải từ 0 đến 5'
        },
        errorMessage: 'Đánh giá tối thiểu phải là số thực'
    },
    categoryName: {
        in: ['params'],
        isString: true,
        notEmpty: true,
        toUpperCase: true,
        isLength: { options: { min: 3, max: 50 } },
        errorMessage: 'Tên danh mục phải là chuỗi không rỗng'
    }
});
const getCategorySchema = checkSchema({
    categoryID: {
        in: ['params'],
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 10 } },
        errorMessage: 'Category ID phải là số nguyên',
        escape: true
    },
    categoryName: {
        in: ['params'],
        isString: true,
        notEmpty: true,
        toUpperCase: true,
        isLength: { options: { min: 3, max: 50 } },
        errorMessage: 'Tên danh mục phải là chuỗi không rỗng',
        escape: true
    }
});
const getProductNameSchema = checkSchema({
    productName: {
        in: ['params'],
        isString: true,
        notEmpty: true,
        isLength: { options: { min: 1, max: 200 } },
        errorMessage: 'Tên sản phẩm phải là chuỗi không rỗng',
        escape: true
    }
});
const ProductFilterSchema = checkSchema({
    productName: {
        in: ['params'],
        isString: true,
        notEmpty: true,
        isLength: { options: { min: 3, max: 200 } },
        errorMessage: 'Tên sản phẩm phải là chuỗi không rỗng',
        escape: true
    },
    minPrice: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        errorMessage: 'Giá tối thiểu phải là số thực',
        escape: true
    },
    maxPrice: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        errorMessage: 'Giá tối đa phải là số thực',
        escape: true
    },
    rating: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        custom: {
            options: (value) => value >= 0 && value <= 5,
            errorMessage: 'Đánh giá phải từ 0 đến 5'
        },
        errorMessage: 'Đánh giá phải là số thực',
        escape: true
    }
});
const MainSubCategorySchema = checkSchema({
    mainCategory: {
        in: ['params'],
        isString: true,
        notEmpty: true,
        isLength: { options: { min: 3, max: 50 } },
        toUpperCase: true,
        errorMessage: 'Danh mục chính phải là chuỗi không rỗng',
        escape: true
    },
    subCategory: {
        in: ['params'],
        isString: true,
        notEmpty: true,
        isLength: { options: { min: 3, max: 50 } },
        errorMessage: 'Danh mục con phải là chuỗi không rỗng',
        escape: true
    }
});
const categoryFilterSchema = checkSchema({
    categoryID: {
        in: ['params'],
        isInt: true,
        toInt: true,
        isLength: { options: { min: 1, max: 50 } },
        errorMessage: 'Category ID phải là số nguyên',
        escape: true
    },
    minPrice: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        errorMessage: 'Giá tối thiểu phải là số thực',
        escape: true
    },
    maxPrice: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        errorMessage: 'Giá tối đa phải là số thực',
        escape: true
    },
    rating: {
        in: ['params'],
        isFloat: true,
        toFloat: true,
        custom: {
            options: (value) => value >= 0 && value <= 5,
            errorMessage: 'Đánh giá phải từ 0 đến 5'
        },
        errorMessage: 'Đánh giá phải là số thực',
        escape: true
    }
});
export { categoryFilterSchema, categorySchema, getCategorySchema, MainSubCategorySchema, ProductFilterSchema, getProductNameSchema, filterSchema }