import { title } from "process";

const topCat = [{
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/dress.svg',
    name: "Đầm & Váy",
    quantity: 53,
    showLink: "/sub-category/fashion/dress-&-frock"
}, {
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/coat.svg',
    name: "Đồ Lót",
    quantity: 58,
    showLink: "/sub-category/fashion/innerwear"
}, {
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/glasses.svg ',
    name: "Kính Mát",
    quantity: 32,
    showLink: "/sub-category/men/sunglasses"
}, {
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/shorts.svg',
    name: "Quần Short & Jeans",
    quantity: 42,
    showLink: "/sub-category/fashion/shorts-&-jeans"
}, {
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/tee.svg',
    name: "Áo Thun",
    quantity: 12,
    showLink: "/sub-category/fashion/TShirt"
},
{
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/jacket.svg',
    name: "Áo Khoác",
    quantity: 63,
    showLink: "/sub-category/men/jacket"
},
{
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/watch.svg',
    name: "Đồng Hồ Thông Minh",
    quantity: 42,
    showLink: "/sub-category/electronics/smart-watch"
}, {
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/hat.svg',
    name: "Gel Tạo Kiểu Tóc",
    quantity: 29,
    showLink: "/sub-category/cosmetics/hair-gel"
}];
const navBtns = [
    { name: "Trang Chủ", isExtendable: false, extendables: [], catLink: '/' },
    { name: "Danh Mục", isExtendable: false, extendables: [], catLink: '' },
    {
        name: "Nam", isExtendable: true, extendables: [
            {
                title: "Áo Sơ Mi",
                link: "/sub-category/men/shirt",
            },
            {
                title: "Quần Short & Jeans",
                link: "/sub-category/fashion/shorts-&-jeans",
            },
            {
                title: "Giày Bảo Hộ",
                link: "/sub-category/footwear/safety-shoes",
            },
            {
                title: "Ví Nam",
                link: "/sub-category/men/wallet",
            },
        ], catLink: '/categories/men'
    },
    {
        name: "Nữ", isExtendable: true, extendables: [
            {
                title: "Đầm & Váy",
                link: "/sub-category/women/dress-&-frock",
            },
            {
                title: "Bông Tai",
                link: "/sub-category/women/earrings",
            },
            {
                title: "Dây Chuyền",
                link: "/sub-category/women/necklace",
            },
            {
                title: "Bộ Trang Điểm",
                link: "/sub-category/women/makeup-kit",
            },
        ], catLink: '/categories/women'
    },
    {
        name: "Trang Sức", isExtendable: true, extendables: [
            {
                title: "Dây Chuyền",
                link: "/sub-category/jewellery/necklace",
            },
            {
                title: "Bông Tai",
                link: "/sub-category/jewellery/earrings",
            },
            {
                title: "Nhẫn Đôi",
                link: "/sub-category/jewellery/couple-rings",
            },
            {
                title: "Vòng Tay",
                link: "/sub-category/jewellery/bracelets",
            },
        ], catLink: '/categories/jewellery'
    },
    {
        name: "Nước Hoa", isExtendable: true, extendables: [
            {
                title: "Nước Hoa Quần Áo",
                link: "/sub-category/perfume/clothes-perfume",
            },
            {
                title: "Khử Mùi",
                link: "/sub-category/perfume/deodorant",
            },
            {
                title: "Hương Hoa",
                link: "/sub-category/perfume/flower-fragrance",
            },
            {
                title: "Xịt Phòng",
                link: "/sub-category/perfume/air-freshener",
            },
        ], catLink: '/categories/perfume'
    },
    {
        name: "Mỹ Phẩm",
        isExtendable: true,
        extendables: [
            {
                title: "Xà Phòng Tắm",
                link: "/sub-category/cosmetics/body-soap",
            },
            {
                title: "Dầu Gội",
                link: "/sub-category/cosmetics/shampoo",
            },
            {
                title: "Nước Hoa",
                link: "/sub-category/cosmetics/perfume",
            },
            {
                title: "Sữa Tắm",
                link: "/sub-category/cosmetics/bodywash",
            }
        ],
        catLink: "/categories/cosmetics"
    },
    {
        name: "Giày Dép",
        isExtendable: true,
        extendables: [
            {
                title: "Giày Cao Cổ",
                link: "/sub-category/footwear/long-shoes",
            },
            {
                title: "Hàng Nhái Cao Cấp",
                link: "/sub-category/footwear/firstcopy",
            },
            {
                title: "Giày Cao Bồi",
                link: "/sub-category/footwear/cowboy-shoes",
            },
            {
                title: "Giày Bảo Hộ",
                link: "/sub-category/footwear/safety-shoes",
            }
        ],
        catLink: "/categories/footwear"
    },
    {
        name: "Thời Trang",
        isExtendable: true,
        extendables: [
            {
                title: "Đồ Lót",
                link: "/sub-category/fashion/innerwear",
            },
            {
                title: "Áo Sơ Mi",
                link: "/sub-category/fashion/shirts",
            },
            {
                title: "Đầm & Váy",
                link: "/sub-category/fashion/dress-&-frock",
            },
            {
                title: "Áo Khoác",
                link: "/sub-category/fashion/jacket",
            }
        ],
        catLink: "/categories/fashion"
    },
    { name: "Blog", isExtendable: false, extendables: [], catLink: '/blog' }
];
const leftStatus = [
    {
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/dress.svg",
        title: "Quần Áo",
        links: [
            {
                title: "Áo Sơ Mi",
                link: "/sub-category/clothes/shirt",
                quantity: 50,
            },
            {
                title: "Quần Short & Jeans",
                link: "/sub-category/clothes/shorts-&-jeans",
                quantity: 50,
            },
            {
                title: "Áo Khoác",
                link: "/sub-category/clothes/jacket",
                quantity: 50,
            },
            {
                title: "Đầm & Váy",
                link: "/sub-category/clothes/dress-&-frock",
                quantity: 50,
            }
        ]
    },
    {
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/shoes.svg",
        title: "Giày Dép",
        links: [
            {
                title: "Thể Thao",
                link: "/sub-category/footwear/sport",
                quantity: 50,
            },
            {
                title: "Lịch Sự",
                link: "/sub-category/footwear/formal",
                quantity: 50,
            },
            {
                title: "Giày Thường Ngày",
                link: "/sub-category/footwear/casual",
                quantity: 50,
            },
            {
                title: "Giày Bảo Hộ",
                link: "/sub-category/footwear/safety-shoes",
                quantity: 50,
            }
        ]
    },
    {
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/jewelry.svg",
        title: "Trang Sức",
        links: [
            {
                title: "Bông Tai",
                link: "/sub-category/jewellery/earrings",
                quantity: 50,
            },
            {
                title: "Nhẫn Đôi",
                link: "/sub-category/jewellery/couple-rings",
                quantity: 50,
            },
            {
                title: "Dây Chuyền",
                link: "/sub-category/jewellery/necklace",
                quantity: 50,
            }
        ]
    },
    {
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/perfume.svg",
        title: "Nước Hoa",
        links: [
            {
                title: "Nước Hoa Quần Áo",
                link: "/sub-category/perfume/clothes-perfume",
                quantity: 50,
            },
            {
                title: "Khử Mùi",
                link: "/sub-category/perfume/deodorant",
                quantity: 50,
            },
            {
                title: "Xịt Phòng",
                link: "/sub-category/perfume/air-freshener",
                quantity: 50,
            },
        ]
    },
    {
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/cosmetics.svg",
        title: "Mỹ Phẩm",
        links: [
            {
                title: "Dầu Gội",
                link: "/sub-category/cosmetics/shampoo",
                quantity: 50,
            },
            {
                title: "Kem Chống Nắng",
                link: "/sub-category/cosmetics/sunscreen",
                quantity: 50,
            },
            {
                title: "Sữa Tắm",
                link: "/sub-category/cosmetics/bodywash",
                quantity: 50,
            },
            {
                title: "Bộ Trang Điểm",
                link: "/sub-category/cosmetics/makeup-kit",
                quantity: 50,
            }
        ]
    },
    {
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/glasses.svg",
        title: "Nam",
        links: [
            {
                title: "Kính Mát",
                link: "/sub-category/men/sunglasses",
                quantity: 50,
            },
            {
                title: "Thường Ngày",
                link: "/sub-category/men/casual",
                quantity: 50,
            }
        ]
    },
    {
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/icons/bag.svg",
        title: "Túi Xách",
        links: [
            {
                title: "Túi Mua Sắm",
                link: "/sub-category/women/bags",
                quantity: 50,
            },
            {
                title: "Balo Gym",
                link: "/sub-category/women/bags",
                quantity: 50,
            },
            {
                title: "Ví Nữ",
                link: "/sub-category/women/bags",
                quantity: 50,
            },
            {
                title: "Ví Nam",
                link: "/sub-category/men/wallet",
                quantity: 50,
            }
        ]
    }
]
const footerCategories = [
    {
        name: 'THỜI TRANG',
        subcategories: [
            { name: 'Áo Thun', subcatLink: '/sub-category/fashion/TShirt' },
            { name: 'Áo Sơ Mi', subcatLink: '/sub-category/fashion/shirts' },
            { name: 'Quần Short & Jeans', subcatLink: '/sub-category/fashion/shorts-&-jeans' },
            { name: 'Áo Khoác', subcatLink: '/sub-category/fashion/jacket' },
            { name: 'Đầm & Váy', subcatLink: '/sub-category/fashion/dress-&-frock' },
            { name: 'Đồ Lót', subcatLink: '/sub-category/fashion/innerwear' },
            { name: 'Vớ & Tất', subcatLink: '/sub-category/fashion/hosiery' }
        ]
    },
    {
        name: 'GIÀY DÉP',
        subcategories: [
            { name: 'Thể Thao', subcatLink: '/sub-category/footwear/sport' },
            { name: 'Lịch Sự', subcatLink: '/sub-category/footwear/formal' },
            { name: 'Boots', subcatLink: '/sub-category/footwear/boots' },
            { name: 'Giày Thường Ngày', subcatLink: '/sub-category/footwear/casual' },
            { name: 'Giày Cao Bồi', subcatLink: '/sub-category/footwear/cowboy-shoes' },
            { name: 'Giày Bảo Hộ', subcatLink: '/sub-category/footwear/safety-shoes' },
            { name: 'Giày Dự Tiệc', subcatLink: '/sub-category/footwear/party-wear-shoes' },
            { name: 'Thương Hiệu', subcatLink: '/sub-category/footwear/branded' },
            { name: 'Hàng Nhái Cao Cấp', subcatLink: '/sub-category/footwear/firstcopy' },
            { name: 'Giày Cao Cổ', subcatLink: '/sub-category/footwear/long-shoes' }
        ]
    },
    {
        name: 'TRANG SỨC',
        subcategories: [
            { name: 'Dây Chuyền', subcatLink: '/sub-category/jewellery/necklace' },
            { name: 'Bông Tai', subcatLink: '/sub-category/jewellery/earrings' },
            { name: 'Nhẫn Đôi', subcatLink: '/sub-category/jewellery/couple-rings' },
            { name: 'Mặt Dây', subcatLink: '/sub-category/jewellery/pendants' },
            { name: 'Pha Lê', subcatLink: '/sub-category/jewellery/crystal' },
            { name: 'Lắc Tay', subcatLink: '/sub-category/jewellery/bangles' },
            { name: 'Vòng Tay', subcatLink: '/sub-category/jewellery/bracelets' },
            { name: 'Khuyên Mũi', subcatLink: '/sub-category/jewellery/nosepin' },
            { name: 'Dây Chuyền', subcatLink: '/sub-category/jewellery/chain' },
            { name: 'Bông Tai', subcatLink: '/sub-category/jewellery/earrings' },
            { name: 'Nhẫn Đôi', subcatLink: '/sub-category/jewellery/couple-rings' }
        ]
    },
    {
        name: 'MỸ PHẨM',
        subcategories: [
            { name: 'Dầu Gội', subcatLink: '/sub-category/cosmetics/shampoo' },
            { name: 'Sữa Tắm', subcatLink: '/sub-category/cosmetics/bodywash' },
            { name: 'Sữa Rửa Mặt', subcatLink: '/sub-category/cosmetics/facewash' },
            { name: 'Bộ Trang Điểm', subcatLink: '/sub-category/cosmetics/makeup-kit' },
            { name: 'Kẻ Mắt', subcatLink: '/sub-category/cosmetics/liner' },
            { name: 'Son Môi', subcatLink: '/sub-category/cosmetics/lipstick' },
            { name: 'Nước Hoa', subcatLink: '/sub-category/cosmetics/perfume' },
            { name: 'Xà Phòng Tắm', subcatLink: '/sub-category/cosmetics/body-soap' },
            { name: 'Tẩy Tế Bào Chết', subcatLink: '/sub-category/cosmetics/scrub' },
            { name: 'Gel Tạo Kiểu Tóc', subcatLink: '/sub-category/cosmetics/hair-gel' },
            { name: 'Thuốc Nhuộm Tóc', subcatLink: '/sub-category/cosmetics/hair-colors' },
            { name: 'Nhuộm Tóc', subcatLink: '/sub-category/cosmetics/hair-dye' },
            { name: 'Kem Chống Nắng', subcatLink: '/sub-category/cosmetics/sunscreen' },
            { name: 'Sữa Dưỡng Da', subcatLink: '/sub-category/cosmetics/skin-lotion' },
            { name: 'Kẻ Mắt', subcatLink: '/sub-category/cosmetics/liner' },
            { name: 'Son Môi', subcatLink: '/sub-category/cosmetics/lipstick' }
        ]
    }
];
const footerSections = [
    {
        sectionName: "Danh Mục Nổi Bật",
        items: [
            {
                title: "Thời Trang",
                link: "/categories/fashion"
            },
            {
                title: "Điện Tử",
                link: "/categories/electronics"
            },
            {
                title: "Mỹ Phẩm",
                link: "/categories/cosmetics"
            },
            {
                title: "Giày Dép",
                link: "/categories/footwear"
            },
            {
                title: "Nước Hoa",
                link: "/categories/perfume"
            }
        ]
    },
    {
        sectionName: "Sản Phẩm",
        items: [
            // {
            //     title: "Giảm Giá",
            //     link: "products/price-drop"
            // },
            // {
            //     title: "Sản Phẩm Mới",
            //     link: "products/new-products"
            // },
            {
                title: "Blog",
                link: "/blog"
            },
            {
                title: "Liên Hệ",
                link: "/contact"
            },
            {
                title: "Dịch Vụ",
                link: "/our-services"
            }
        ]
    },
    {
        sectionName: "Về Chúng Tôi",
        items: [
            {
                title: "Giới Thiệu",
                link: "/about"
            },
            {
                title: "Chính Sách Bảo Mật",
                link: "/policy/privacypolicy"
            },
            {
                title: "Thanh Toán An Toàn",
                link: "/securepayment"
            },
            {
                title: "Điều Khoản & Điều Kiện",
                link: "/policy/terms&conditions"
            },
            {
                title: "Hoàn Tiền & Hủy Đơn",
                link: "/policy/refund&cancellation"
            }
        ]
    },
    {
        sectionName: 'Liên Hệ',
        items: [
            { title: '31/134 Cầu Diễn, Nguyên Xá, Minh Khai, Quận Bắc Từ Liêm, Hà Nội', link: "#" },
            { title: '0123 456 789', link: "#" },
            { title: 'email@email.com', link: "#" }
        ]
    }
];
const featuresSec = [
    {
        title: "Giao Hàng Toàn Quốc",
        description: "Miễn phí cho đơn từ $100",
        siteLink: "",
        icon: 'fa-solid fa-ship fa-2xl',
    },
    {
        title: "Giao Hàng Trong Ngày",
        description: "Áp dụng tại Hà Nội và TP.HCM",
        siteLink: "",
        icon: 'fa-solid fa-rocket fa-2xl',
    },
    {
        title: "Hỗ Trợ Trực Tuyến",
        description: "Thời gian: 8h - 23h",
        siteLink: "",
        icon: 'fa-solid fa-phone fa-2xl',
    },
    {
        title: "Chính Sách Đổi Trả",
        description: "Đổi trả dễ dàng, miễn phí",
        siteLink: "",
        icon: 'fa-solid fa-backward fa-2xl',
    },
    {
        title: "Hoàn Tiền 30%",
        description: "Áp dụng cho đơn từ $100",
        siteLink: "",
        icon: 'fa-solid fa-gift fa-2xl',
    }
];
const currentEvent = {
    discount: 25,
    titleFirst: "Summer",
    titleLast: "Collection",
    starting: 10,
    isDiscount: true,
    eventLink: ''
}
const testimonial = {
    imgLink: 'https://codewithsadee.github.io/anon-ecommerce-website/assets/images/testimonial-1.jpg',
    name: 'ALAN DOE',
    position: 'CEO & Nhà Sáng Lập',
    description: 'Dịch vụ tuyệt vời, sản phẩm chất lượng, tôi rất hài lòng khi mua sắm tại đây!'
}
const categoryDropDown = [
    {
        title: 'Điện Tử',
        catLink: "/electronics",
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/electronics-banner-1.jpg",
        imgAlt: "",
        imgRedirectLink: "",
        subCategories: [
            {
                title: "Máy Tính Để Bàn",
                link: "/sub-category/electronics/desktop",
            },
            {
                title: "Laptop",
                link: "/sub-category/electronics/laptop",
            },
            {
                title: "Máy Ảnh",
                link: "/sub-category/electronics/camera",
            },
            {
                title: "Máy Tính Bảng",
                link: "/sub-category/electronics/tablet",
            },
            {
                title: "Tai Nghe",
                link: "/sub-category/electronics/headphone",
            },
        ]
    },
    {
        title: "Nam",
        catLink: "/men",
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/mens-banner.jpg",
        imgAlt: "",
        imgRedirectLink: "",
        subCategories: [
            {
                title: "Lịch Sự",
                link: "/sub-category/men/formal",
            },
            {
                title: "Thường Ngày",
                link: "/sub-category/men/casual",
            },
            {
                title: "Thể Thao",
                link: "/sub-category/men/sports",
            },
            {
                title: "Áo Khoác",
                link: "/sub-category/men/jacket",
            },
            {
                title: "Kính Mát",
                link: "/sub-category/men/sunglasses",
            },
        ]
    },
    {
        title: "Nữ",
        catLink: "/women",
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/womens-banner.jpg",
        imgAlt: "",
        imgRedirectLink: "",
        subCategories: [
            {
                title: "Lịch Sự",
                link: "/sub-category/women/formal",
            },
            {
                title: "Thường Ngày",
                link: "/sub-category/women/casual",
            },
            {
                title: "Nước Hoa",
                link: "/sub-category/women/perfume",
            },
            {
                title: "Mỹ Phẩm",
                link: "/sub-category/women/cosmetics",
            },
            {
                title: "Túi Xách",
                link: "/sub-category/women/bags",
            },
        ]
    },
    {
        title: 'Điện Tử',
        catLink: "/electronics",
        imgLink: "https://codewithsadee.github.io/anon-ecommerce-website/assets/images/electronics-banner-2.jpg",
        imgAlt: "",
        imgRedirectLink: "",
        subCategories: [
            {
                title: "Đồng Hồ Thông Minh",
                link: "/sub-category/electronics/smart-watch",
            },
            {
                title: "Tivi Thông Minh",
                link: "/sub-category/electronics/smart-TV",
            },
            {
                title: "Bàn Phím",
                link: "/sub-category/electronics/keyboard",
            },
            {
                title: "Chuột Máy Tính",
                link: "/sub-category/electronics/mouse",
            },
            {
                title: "Micro",
                link: "/sub-category/electronics/microphone",
            },
        ]
    },
];
const paymentSecure = [
    {
        title: 'Thanh Toán An Toàn',
        description: "Chúng tôi ưu tiên bảo mật thông tin thanh toán của bạn bằng các biện pháp bảo vệ hiện đại, đảm bảo mọi giao dịch đều an toàn tuyệt đối để bạn yên tâm mua sắm.",
        imgLink: 'securepayment.jpg',
        imgAlt: '',
    },
    {
        title: 'Công Nghệ Mã Hóa Tiên Tiến',
        description: "Chúng tôi sử dụng công nghệ mã hóa SSL để bảo vệ dữ liệu thanh toán, đảm bảo mọi thông tin cá nhân và giao dịch của bạn luôn được bảo mật tuyệt đối.",
        imgLink: 'securepayment-1.jpg',
        imgAlt: '',
    },
    {
        title: 'Tuân Thủ Chuẩn PCI',
        description: "Chúng tôi tuân thủ nghiêm ngặt tiêu chuẩn bảo mật PCI DSS, đảm bảo môi trường thanh toán an toàn và giảm thiểu rủi ro gian lận.",
        imgLink: 'securepayment-2.jpg',
        imgAlt: '',
    },
    {
        title: 'Đối Tác Thanh Toán Uy Tín',
        description: "Tất cả giao dịch được xử lý qua các đối tác thanh toán hàng đầu, đảm bảo an toàn và tiện lợi cho mọi phương thức thanh toán bạn lựa chọn.",
        imgLink: 'securepayment-3.jpg',
        imgAlt: '',
    },
    {
        title: 'Giám Sát & Đánh Giá Liên Tục',
        description: "Đội ngũ bảo mật của chúng tôi liên tục theo dõi, kiểm tra và nâng cấp hệ thống để phòng chống mọi rủi ro tiềm ẩn, mang lại sự an tâm tối đa cho khách hàng.",
        imgLink: 'securepayment-4.jpg',
        imgAlt: '',
    },
    {
        title: 'Sự An Tâm Của Bạn Là Ưu Tiên',
        description: "Chúng tôi cam kết mang đến trải nghiệm thanh toán an toàn, nhanh chóng. Hãy mua sắm tự tin – thông tin của bạn luôn được bảo vệ tuyệt đối.",
        imgLink: 'securepayment-5.jpg',
        imgAlt: '',
    },
]
const aboutUS = {
    section1: [
        {
            title: "Về Chúng Tôi",
            description: "Chào mừng bạn đến với Ecommerce, điểm đến lý tưởng cho mọi nhu cầu mua sắm của bạn. Được thành lập từ năm [năm], chúng tôi cam kết mang đến những sản phẩm chất lượng cùng trải nghiệm mua sắm chuyên nghiệp cho khách hàng trên toàn quốc.",
            imgLink: "about.jpg",
            imgAlt: ""
        },
        {
            title: "Câu Chuyện Của Chúng Tôi",
            description: "Ecommerce ra đời với mong muốn thay đổi cách mọi người mua sắm trực tuyến. Từ một ý tưởng nhỏ, chúng tôi đã phát triển thành nền tảng thương mại điện tử uy tín, phục vụ hàng triệu khách hàng với đa dạng sản phẩm chất lượng.",
            imgLink: "about-1.jpg",
            imgAlt: ""
        },
        {
            title: "Sứ Mệnh",
            description: "Sứ mệnh của chúng tôi là mang đến giá trị thực cho cộng đồng thông qua việc cung cấp sản phẩm tốt nhất, giúp khách hàng cập nhật xu hướng, lựa chọn thương hiệu yêu thích và mua sắm dễ dàng.",
            imgLink: "about-2.jpg",
            imgAlt: ""
        },
        {
            title: "Điều Làm Nên Khác Biệt",
            description: "Chúng tôi luôn đặt chất lượng và sự hài lòng của khách hàng lên hàng đầu, từ việc chọn lọc sản phẩm đến giao hàng nhanh chóng, đảm bảo mỗi trải nghiệm đều vượt mong đợi.",
            imgLink: "about-3.jpg",
            imgAlt: ""
        }

    ],
    section2: {
        title: "Giá Trị Cốt Lõi",
        imgLink: "about-5.jpg",
        imgAlt: "",
        listPoints: [
            {
                title: "Khách Hàng Là Trung Tâm",
                description: "Chúng tôi luôn lắng nghe và hỗ trợ tận tâm để mỗi khách hàng đều hài lòng khi mua sắm tại Ecommerce."
            },
            {
                title: "Đảm Bảo Chất Lượng",
                description: "Mỗi sản phẩm đều được kiểm tra kỹ lưỡng, đảm bảo nguồn gốc và chất lượng trước khi đến tay khách hàng."
            },
            {
                title: "Đổi Mới Sáng Tạo",
                description: "Chúng tôi không ngừng đổi mới công nghệ, dịch vụ để nâng cao trải nghiệm mua sắm cho bạn."
            },
            {
                title: "Phát Triển Bền Vững",
                description: "Ecommerce cam kết bảo vệ môi trường, ưu tiên sản phẩm thân thiện và chuỗi cung ứng minh bạch, trách nhiệm."
            }
        ],
    },
    section3: {
        title: "Liên Hệ Với Chúng Tôi",
        description: [
            "Chúng tôi luôn minh bạch và sẵn sàng hỗ trợ bạn. Nếu có bất kỳ thắc mắc, góp ý hoặc cần tư vấn, hãy liên hệ đội ngũ CSKH của chúng tôi để được giải đáp nhanh chóng.",
            "Cảm ơn bạn đã tin tưởng lựa chọn Ecommerce. Rất hân hạnh được phục vụ và mang đến cho bạn niềm vui mua sắm trực tuyến."
        ]
    }
}
const availableCategories = [
    {
        title: 'fashion',
        banners: ["https://i.pinimg.com/736x/71/c0/90/71c090c1ee401a79f7b84c086fa04063.jpg", "https://www.apetogentleman.com/wp-content/uploads/2022/05/FALL-WINTER-TRENDS.jpg", "https://assets.vogue.com/photos/614a24383c6a255bbac856d8/master/w_2560%2Cc_limit/00_story.jpg"],
        subcategories: [
            { title: 'T-Shirt', link: '/TShirt' },
            { title: 'Shirts', link: '/shirts' },
            { title: 'Shorts & Jeans', link: '/shorts-&-jeans' },
            { title: 'Jacket', link: '/jacket' },
            { title: 'Dress & Frock', link: '/dress-&-frock' },
            { title: 'Innerwear', link: '/innerwear' },
            { title: 'Hosiery', link: '/hosiery' },
        ]
    },
    {
        title: 'footwear',
        banners: ["https://www.india.com/wp-content/uploads/2017/08/footwear.jpg", "https://images.moneycontrol.com/static-mcnews/2020/04/footwear-28042020.jpg?impolicy=website&width=1600&height=900", "https://www.airwavesf.com/wp-content/uploads/2022/06/79589-645-collecting-sneakers-and-photography-a-collection-of-limited-editions-and-exclusive-models-combination_t20_Op1ydp.jpg"],
        subcategories: [
            { title: 'Sport', link: '/sport' },
            { title: 'Formal', link: '/formal' },
            { title: 'Boots', link: '/boots' },
            { title: 'Casual', link: '/casual' },
            { title: 'Cowboy Shoes', link: '/cowboy-shoes' },
            { title: 'Safety Shoes', link: '/safety-shoes' },
            { title: 'Party Wear Shoes', link: '/party-wear-shoes' },
            { title: 'Branded', link: '/branded-footwear' },
            { title: 'Firstcopy', link: '/firstcopy' },
            { title: 'Long Shoes', link: '/long-shoes' },
        ]
    },
    {
        title: 'jewellery',
        banners: ["https://www.mygoldguide.in/sites/default/files/Indo-wester_%20look_Cocktail_parties_01.jpg", "https://kiyajewellery.in/cdn/shop/files/351494422_600067025526915_1828569725887026248_n_copy.jpg?v=1713783276&width=3840", "https://www.truesilver.co.in/cdn/shop/articles/6_Stunning_Jewellery_for_Western_Wear.jpg?v=1695726468"],
        subcategories: [
            { title: 'Necklace', link: '/necklace' },
            { title: 'Earrings', link: '/earrings' },
            { title: 'Couple Rings', link: '/couple-rings' },
            { title: 'Pendants', link: '/pendants' },
            { title: 'Crystal', link: '/crystal' },
            { title: 'Bangles', link: '/bangles' },
            { title: 'Bracelets', link: '/bracelets' },
            { title: 'Nosepin', link: '/nosepin' },
            { title: 'Chain', link: '/chain' },
        ]
    },
    {
        title: 'cosmetics',
        banners: ["https://www.cosmeticsdesign.com/var/wrbm_gb_food_pharma/storage/images/media/images/news-photogalleries/786041/color-cosmetics/15607895-1-eng-GB/Color-cosmetics.jpg", "https://img.etimg.com/thumb/width-1600,height-900,imgsize-55008,resizemode-75,msid-102292994/industry/cons-products/fashion-/-cosmetics-/-jewellery/indians-spent-over-rs-5000-cr-on-cosmetics-sector-may-gain-as-more-women-go-to-work-study.jpg", "https://lh3.googleusercontent.com/proxy/9nWZ4LOknTOPQgXzTZ0Q9VT6_WzLd8dmLgIkfZYiQgWuuOWXc7Gk6cfdzfjdUpbpiwPD6nIdy6jlIas_EUBibRUWWwxlvZxrNMJmFcSqdF1YB943"],
        subcategories: [
            { title: 'Shampoo', link: '/shampoo' },
            { title: 'Bodywash', link: '/bodywash' },
            { title: 'Facewash', link: '/facewash' },
            { title: 'Makeup Kit', link: '/makeup-kit' },
            { title: 'Liner', link: '/liner' },
            { title: 'Lipstick', link: '/lipstick' },
            { title: 'Perfume', link: '/perfume' },
            { title: 'Body Soap', link: '/body-soap' },
            { title: 'Scrub', link: '/scrub' },
            { title: 'Hair Gel', link: '/hair-gel' },
            { title: 'Hair Colors', link: '/hair-colors' },
            { title: 'Hair Dye', link: '/hair-dye' },
            { title: 'Sunscreen', link: '/sunscreen' },
            { title: 'Skin Lotion', link: '/skin-lotion' },
        ]
    },
    {
        title: 'electronics',
        banners: ["https://i.pinimg.com/originals/d2/b9/40/d2b940959caadeaf591041c70ab7a0ab.png", "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/gaming-computer-banner-sale-design-template-4eee9f783ef62e0f7122e9ae7828bec1_screen.jpg?ts=1659604125", "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/computer-accessories-template-design-129534fcc8ab7b353cd7627bac2ec34e_screen.jpg?ts=1659516861"],
        subcategories: [
            { title: 'Laptops', link: '/laptop' },
            { title: 'Tablets', link: '/tablet' },
            { title: 'Headphones', link: '/headphone' },
            { title: 'Cameras', link: '/cameras' },
            { title: 'Smartwatches', link: '/smart-watch' },
            { title: 'Smart TV', link: '/smart-TV' },
        ]
    },
];
const loginFeatures = [
    {
        title: 'Theo Dõi Đơn Hàng',
        description: 'Cập nhật trạng thái đơn hàng của bạn mọi lúc, mọi nơi.',
        iconType: 'search',
    },
    {
        title: 'Gợi Ý Cá Nhân Hóa',
        description: 'Đăng nhập để nhận các đề xuất sản phẩm phù hợp với sở thích mua sắm của bạn.',
        iconType: 'star',
    },
    {
        title: 'Quản Lý Danh Sách Yêu Thích',
        description: 'Lưu lại sản phẩm yêu thích để mua nhanh chóng trong lần tiếp theo.',
        iconType: 'heart',
    },
    {
        title: 'Thanh Toán An Toàn',
        description: 'Trải nghiệm thanh toán nhanh chóng, an toàn và tiện lợi mỗi lần mua sắm.',
        iconType: 'lock',
    },
];
const serviceFeatures = [
    {
        title: 'Giao Hàng Toàn Cầu',
        description: "Dịch vụ vận chuyển chuyên nghiệp, giao hàng tận nơi trên toàn thế giới, đảm bảo đơn hàng của bạn luôn đến nhanh chóng và an toàn.",
        imgLink: 'https://cdn.pixabay.com/photo/2014/04/03/11/55/globe-312563_640.png',
        imgAlt: 'Globe with delivery arrows',
    },
    {
        title: 'Miễn Phí Giao Hàng Đơn Từ 2.500.000đ',
        description: "Mua sắm thỏa thích và nhận ưu đãi miễn phí giao hàng cho tất cả đơn hàng từ 2.500.000đ. Tiết kiệm chi phí, tăng trải nghiệm mua sắm.",
        imgLink: 'https://img.freepik.com/premium-vector/delivery-order-illustration-modern-flat-style_529804-22.jpg',
        imgAlt: 'Shipping box with dollar sign',
    },
    {
        title: 'Giao Hàng Nhanh Trong Ngày',
        description: "Cần gấp? Đơn hàng của bạn sẽ được giao tận nơi chỉ trong 24h tại các thành phố lớn. Nhanh chóng, tiện lợi, đáng tin cậy.",
        imgLink: 'https://cdn-icons-png.freepik.com/512/1254/1254262.png',
        imgAlt: 'Clock with delivery truck',
    },
    {
        title: 'Giao Nhanh Tại Thành Phố Lớn',
        description: "Dịch vụ giao hàng nhanh chỉ áp dụng cho khách hàng tại các thành phố lớn – nhận hàng trong ngày, đáp ứng mọi nhu cầu mua sắm gấp.",
        imgLink: 'https://img.freepik.com/free-vector/gradient-international-trade_23-2149150716.jpg',
        imgAlt: 'Map highlighting tier-1 cities',
    },
    {
        title: 'Hỗ Trợ Trực Tuyến Tận Tâm',
        description: "Đội ngũ CSKH chuyên nghiệp, hỗ trợ từ 8h - 23h mỗi ngày, luôn sẵn sàng giải đáp mọi thắc mắc và hỗ trợ bạn mọi lúc.",
        imgLink: 'https://img.freepik.com/free-vector/hand-drawn-flat-design-omnichannel-illustration_23-2149360245.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1718496000&semt=ais_user',
        imgAlt: 'Headset with customer service icon',
    },
    {
        title: 'Đổi Trả Dễ Dàng, Miễn Phí',
        description: "Bạn hoàn toàn yên tâm mua sắm với chính sách đổi trả nhanh chóng, miễn phí và minh bạch của chúng tôi.",
        imgLink: 'https://atlanticcourier.net/static/images/testimonials-atlantic-courier.jpg',
        imgAlt: 'Return package with arrow',
    },
    {
        title: 'Hoàn Tiền 30% Đảm Bảo',
        description: "Hoàn tiền 30% cho đơn hàng từ 2.500.000đ nếu bạn không hài lòng. Cam kết vì sự an tâm và hài lòng của bạn.",
        imgLink: 'https://cdni.iconscout.com/illustration/premium/thumb/cashback-3465499-2912113.png?f=webp',
        imgAlt: 'Money back symbol',
    },
];
const allCategories = [
    { name: "Nam", link: '/categories/MEN' },
    { name: "Nữ", link: '/categories/WOMEN' },
    { name: 'Mỹ Phẩm', link: '/categories/Cosmetics' },
    { name: 'Điện Tử', link: '/categories/electronics' },
    { name: 'Nước Hoa', link: '/categories/perfume' },
    { name: 'Trang Sức', link: '/categories/jewellery' },
    { name: 'Giày Dép', link: '/categories/footwear' },
    { name: 'Thời Trang', link: '/categories/fashion' }
]
export { topCat, allCategories, serviceFeatures, loginFeatures, navBtns, aboutUS, availableCategories, paymentSecure, leftStatus, categoryDropDown, footerCategories, footerSections, featuresSec, currentEvent, testimonial };