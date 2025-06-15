--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Homebrew)
-- Dumped by pg_dump version 17.0

-- Started on 2025-06-15 23:48:50 +07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 261 (class 1255 OID 16390)
-- Name: update_updatedat_column(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.update_updatedat_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updatedat = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.update_updatedat_column() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16391)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    addressid integer NOT NULL,
    userid integer NOT NULL,
    addresstype character varying(4) NOT NULL,
    username character varying(64) NOT NULL,
    contactnumber character varying(10) NOT NULL,
    addressline1 character varying(128) NOT NULL,
    addressline2 character varying(128),
    city character varying(60) NOT NULL,
    state character varying(16) NOT NULL,
    country character varying(56) NOT NULL,
    postalcode character varying(8) NOT NULL,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_default boolean NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16396)
-- Name: addresses_addressid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.addresses_addressid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.addresses_addressid_seq OWNER TO postgres;

--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 216
-- Name: addresses_addressid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.addresses_addressid_seq OWNED BY public.addresses.addressid;


--
-- TOC entry 217 (class 1259 OID 16397)
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    article_id integer NOT NULL,
    category character varying(24),
    title character varying(255) NOT NULL,
    imglink character varying(255),
    imgalt character varying(255),
    author character varying(100) NOT NULL,
    published_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    content text
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16403)
-- Name: articles_article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_article_id_seq OWNER TO postgres;

--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 218
-- Name: articles_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_article_id_seq OWNED BY public.articles.article_id;


--
-- TOC entry 219 (class 1259 OID 16404)
-- Name: banners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banners (
    bannerid integer NOT NULL,
    toptitle character varying(255) NOT NULL,
    middletitle character varying(255) NOT NULL,
    bottomtitle character varying(255) NOT NULL,
    imglink character varying(255) NOT NULL,
    startprice numeric(10,2) NOT NULL,
    buttontitle character varying(255) NOT NULL,
    redirect_link character varying(255) DEFAULT ''::character varying,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.banners OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16412)
-- Name: banners_bannerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banners_bannerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banners_bannerid_seq OWNER TO postgres;

--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 220
-- Name: banners_bannerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banners_bannerid_seq OWNED BY public.banners.bannerid;


--
-- TOC entry 221 (class 1259 OID 16413)
-- Name: cartitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cartitems (
    cartitemid integer NOT NULL,
    userid integer,
    productid integer,
    quantity integer NOT NULL,
    sizeid integer,
    colorid integer,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.cartitems OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16418)
-- Name: cartitems_cartitemid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cartitems_cartitemid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cartitems_cartitemid_seq OWNER TO postgres;

--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 222
-- Name: cartitems_cartitemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cartitems_cartitemid_seq OWNED BY public.cartitems.cartitemid;


--
-- TOC entry 223 (class 1259 OID 16419)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    categoryid integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(100) NOT NULL,
    maincategory character varying(15)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16422)
-- Name: categories_categoryid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_categoryid_seq OWNER TO postgres;

--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 224
-- Name: categories_categoryid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_categoryid_seq OWNED BY public.categories.categoryid;


--
-- TOC entry 225 (class 1259 OID 16423)
-- Name: contact_queries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_queries (
    queryid integer NOT NULL,
    name character varying(255),
    email character varying(255),
    number character varying(10),
    method character varying(10),
    message text
);


ALTER TABLE public.contact_queries OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16428)
-- Name: contact_queries_queryid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_queries_queryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contact_queries_queryid_seq OWNER TO postgres;

--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 226
-- Name: contact_queries_queryid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_queries_queryid_seq OWNED BY public.contact_queries.queryid;


--
-- TOC entry 227 (class 1259 OID 16429)
-- Name: coupons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coupons (
    couponid integer NOT NULL,
    code character varying(50) NOT NULL,
    description text,
    discountpercentage numeric(5,2),
    maxdiscountamount numeric(10,2),
    minpurchaseamount numeric(10,2),
    validfrom timestamp without time zone,
    validuntil timestamp without time zone,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.coupons OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16436)
-- Name: coupons_couponid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coupons_couponid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.coupons_couponid_seq OWNER TO postgres;

--
-- TOC entry 4109 (class 0 OID 0)
-- Dependencies: 228
-- Name: coupons_couponid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coupons_couponid_seq OWNED BY public.coupons.couponid;


--
-- TOC entry 229 (class 1259 OID 16437)
-- Name: deals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deals (
    dealid integer NOT NULL,
    productid integer NOT NULL,
    end_time timestamp without time zone NOT NULL,
    sold integer,
    available integer
);


ALTER TABLE public.deals OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16440)
-- Name: deals_dealid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deals_dealid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.deals_dealid_seq OWNER TO postgres;

--
-- TOC entry 4110 (class 0 OID 0)
-- Dependencies: 230
-- Name: deals_dealid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deals_dealid_seq OWNED BY public.deals.dealid;


--
-- TOC entry 231 (class 1259 OID 16441)
-- Name: giftcards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.giftcards (
    cardid integer NOT NULL,
    cardname character varying(255) NOT NULL,
    cardcode character varying(100) NOT NULL,
    description text,
    balance numeric(10,2) NOT NULL,
    currency character varying(10) NOT NULL,
    expirydate date NOT NULL,
    recipientname character varying(100),
    recipientemail character varying(100),
    sendername character varying(100),
    senderemail character varying(100),
    message text,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(50) DEFAULT 'Active'::character varying
);


ALTER TABLE public.giftcards OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16449)
-- Name: giftcards_cardid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.giftcards_cardid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.giftcards_cardid_seq OWNER TO postgres;

--
-- TOC entry 4111 (class 0 OID 0)
-- Dependencies: 232
-- Name: giftcards_cardid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.giftcards_cardid_seq OWNED BY public.giftcards.cardid;


--
-- TOC entry 233 (class 1259 OID 16450)
-- Name: orderitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orderitems (
    orderitemid integer NOT NULL,
    orderid integer,
    productid integer,
    quantity integer,
    shippingid integer,
    paymentid integer,
    colorid integer,
    sizeid integer
);


ALTER TABLE public.orderitems OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16453)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    orderid integer NOT NULL,
    userid integer,
    totalamount numeric(10,2) NOT NULL,
    orderstatus character varying(50) DEFAULT 'Pending'::character varying,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    order_code character varying(4)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16459)
-- Name: orders_orderid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_orderid_seq OWNER TO postgres;

--
-- TOC entry 4112 (class 0 OID 0)
-- Dependencies: 235
-- Name: orders_orderid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;


--
-- TOC entry 236 (class 1259 OID 16460)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    paymentid integer NOT NULL,
    orderid integer,
    paymentmethod character varying(100),
    paymentstatus character varying(50) DEFAULT 'Pending'::character varying,
    amount numeric(10,2) NOT NULL,
    transactionid character varying(100),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    billingaddress integer,
    paymentgateway_id character varying(255)
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16468)
-- Name: payments_paymentid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_paymentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_paymentid_seq OWNER TO postgres;

--
-- TOC entry 4113 (class 0 OID 0)
-- Dependencies: 237
-- Name: payments_paymentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_paymentid_seq OWNED BY public.payments.paymentid;


--
-- TOC entry 238 (class 1259 OID 16469)
-- Name: productcolors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productcolors (
    colorid integer NOT NULL,
    productid integer,
    colorname character varying(50) NOT NULL,
    colorclass character varying(50)
);


ALTER TABLE public.productcolors OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16472)
-- Name: productcolors_colorid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productcolors_colorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productcolors_colorid_seq OWNER TO postgres;

--
-- TOC entry 4114 (class 0 OID 0)
-- Dependencies: 239
-- Name: productcolors_colorid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productcolors_colorid_seq OWNED BY public.productcolors.colorid;


--
-- TOC entry 240 (class 1259 OID 16473)
-- Name: productimages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productimages (
    imageid integer NOT NULL,
    productid integer,
    imglink character varying(255) NOT NULL,
    imgalt character varying(255),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    isprimary boolean
);


ALTER TABLE public.productimages OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16479)
-- Name: productimages_imageid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productimages_imageid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productimages_imageid_seq OWNER TO postgres;

--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 241
-- Name: productimages_imageid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productimages_imageid_seq OWNED BY public.productimages.imageid;


--
-- TOC entry 242 (class 1259 OID 16480)
-- Name: productparams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productparams (
    productid integer NOT NULL,
    issale boolean,
    isnew boolean,
    isdiscount boolean,
    stars double precision,
    views integer DEFAULT 0,
    sold integer DEFAULT 0,
    rating integer DEFAULT 0
);


ALTER TABLE public.productparams OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16486)
-- Name: productparams_productid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productparams_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productparams_productid_seq OWNER TO postgres;

--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 243
-- Name: productparams_productid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productparams_productid_seq OWNED BY public.productparams.productid;


--
-- TOC entry 244 (class 1259 OID 16487)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    productid integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    categoryid integer,
    price numeric(10,2) NOT NULL,
    discount numeric(5,2),
    stock integer NOT NULL,
    tags character varying(255),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    imgid character varying(50),
    seller_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16494)
-- Name: products_productid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_productid_seq OWNER TO postgres;

--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 245
-- Name: products_productid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_productid_seq OWNED BY public.products.productid;


--
-- TOC entry 246 (class 1259 OID 16495)
-- Name: productsizes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productsizes (
    sizeid integer NOT NULL,
    productid integer,
    sizename character varying(10) NOT NULL,
    instock boolean NOT NULL
);


ALTER TABLE public.productsizes OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 16498)
-- Name: productsizes_sizeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productsizes_sizeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productsizes_sizeid_seq OWNER TO postgres;

--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 247
-- Name: productsizes_sizeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productsizes_sizeid_seq OWNED BY public.productsizes.sizeid;


--
-- TOC entry 248 (class 1259 OID 16499)
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    reviewid integer NOT NULL,
    userid integer NOT NULL,
    productid integer NOT NULL,
    rating double precision NOT NULL,
    comment text,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    title character varying(50) NOT NULL,
    CONSTRAINT reviews_rating_check CHECK (((rating >= (1)::double precision) AND (rating <= (5)::double precision)))
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16507)
-- Name: reviews_reviewid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_reviewid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_reviewid_seq OWNER TO postgres;

--
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 249
-- Name: reviews_reviewid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_reviewid_seq OWNED BY public.reviews.reviewid;


--
-- TOC entry 250 (class 1259 OID 16508)
-- Name: savedpaymentcards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.savedpaymentcards (
    cardid integer NOT NULL,
    userid integer NOT NULL,
    cardnumber character varying(16) NOT NULL,
    cardholdername character varying(100) NOT NULL,
    expirymonth integer NOT NULL,
    expiryyear integer NOT NULL,
    cardtype character varying(50),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.savedpaymentcards OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 16513)
-- Name: savedpaymentcards_cardid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.savedpaymentcards_cardid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.savedpaymentcards_cardid_seq OWNER TO postgres;

--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 251
-- Name: savedpaymentcards_cardid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.savedpaymentcards_cardid_seq OWNED BY public.savedpaymentcards.cardid;


--
-- TOC entry 252 (class 1259 OID 16514)
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    seller_id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    password character varying(255),
    phone_number character varying(20),
    company_name character varying(255),
    tax_id character varying(50),
    registration_number character varying(50),
    store_url character varying(255),
    business_description text,
    profile_image_url character varying(255),
    join_date date,
    rating numeric(3,2),
    addressline1 character varying(255),
    addressline2 character varying(255),
    city character varying(100),
    state character varying(100),
    country character varying(100),
    postalcode character varying(20)
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16519)
-- Name: shipping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shipping (
    shippingid integer NOT NULL,
    orderid integer,
    addressid integer,
    shippingmethod character varying(100),
    shippingcost numeric(10,2),
    trackingnumber character varying(100),
    shippedat timestamp without time zone,
    deliveredat timestamp without time zone,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.shipping OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 16524)
-- Name: shipping_shippingid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shipping_shippingid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shipping_shippingid_seq OWNER TO postgres;

--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 254
-- Name: shipping_shippingid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shipping_shippingid_seq OWNED BY public.shipping.shippingid;


--
-- TOC entry 255 (class 1259 OID 16525)
-- Name: usercoupons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usercoupons (
    usercouponid integer NOT NULL,
    userid integer NOT NULL,
    couponid integer NOT NULL,
    usedat timestamp without time zone,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.usercoupons OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 16530)
-- Name: usercoupons_usercouponid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usercoupons_usercouponid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usercoupons_usercouponid_seq OWNER TO postgres;

--
-- TOC entry 4122 (class 0 OID 0)
-- Dependencies: 256
-- Name: usercoupons_usercouponid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usercoupons_usercouponid_seq OWNED BY public.usercoupons.usercouponid;


--
-- TOC entry 257 (class 1259 OID 16531)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    userid integer NOT NULL,
    username character varying(64) NOT NULL,
    email character varying(128) NOT NULL,
    password character varying(255) NOT NULL,
    mobile_number character varying(10) NOT NULL,
    dob character varying(10) NOT NULL,
    creation_ip inet,
    role character varying(50) DEFAULT 'customer'::character varying,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    update_ip inet,
    otp character varying(4),
    promotional boolean
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 16539)
-- Name: users_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_userid_seq OWNER TO postgres;

--
-- TOC entry 4123 (class 0 OID 0)
-- Dependencies: 258
-- Name: users_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;


--
-- TOC entry 259 (class 1259 OID 16540)
-- Name: wishlistitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wishlistitems (
    wishlistitemid integer NOT NULL,
    userid integer NOT NULL,
    productid integer NOT NULL,
    addedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.wishlistitems OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 16544)
-- Name: wishlistitems_wishlistitemid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wishlistitems_wishlistitemid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.wishlistitems_wishlistitemid_seq OWNER TO postgres;

--
-- TOC entry 4124 (class 0 OID 0)
-- Dependencies: 260
-- Name: wishlistitems_wishlistitemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wishlistitems_wishlistitemid_seq OWNED BY public.wishlistitems.wishlistitemid;


--
-- TOC entry 3762 (class 2604 OID 16545)
-- Name: addresses addressid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses ALTER COLUMN addressid SET DEFAULT nextval('public.addresses_addressid_seq'::regclass);


--
-- TOC entry 3765 (class 2604 OID 16546)
-- Name: articles article_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN article_id SET DEFAULT nextval('public.articles_article_id_seq'::regclass);


--
-- TOC entry 3767 (class 2604 OID 16547)
-- Name: banners bannerid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners ALTER COLUMN bannerid SET DEFAULT nextval('public.banners_bannerid_seq'::regclass);


--
-- TOC entry 3771 (class 2604 OID 16548)
-- Name: cartitems cartitemid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cartitems ALTER COLUMN cartitemid SET DEFAULT nextval('public.cartitems_cartitemid_seq'::regclass);


--
-- TOC entry 3774 (class 2604 OID 16549)
-- Name: categories categoryid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN categoryid SET DEFAULT nextval('public.categories_categoryid_seq'::regclass);


--
-- TOC entry 3775 (class 2604 OID 16550)
-- Name: contact_queries queryid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_queries ALTER COLUMN queryid SET DEFAULT nextval('public.contact_queries_queryid_seq'::regclass);


--
-- TOC entry 3776 (class 2604 OID 16551)
-- Name: coupons couponid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons ALTER COLUMN couponid SET DEFAULT nextval('public.coupons_couponid_seq'::regclass);


--
-- TOC entry 3779 (class 2604 OID 16552)
-- Name: deals dealid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deals ALTER COLUMN dealid SET DEFAULT nextval('public.deals_dealid_seq'::regclass);


--
-- TOC entry 3780 (class 2604 OID 16553)
-- Name: giftcards cardid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.giftcards ALTER COLUMN cardid SET DEFAULT nextval('public.giftcards_cardid_seq'::regclass);


--
-- TOC entry 3784 (class 2604 OID 16554)
-- Name: orders orderid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);


--
-- TOC entry 3788 (class 2604 OID 16555)
-- Name: payments paymentid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN paymentid SET DEFAULT nextval('public.payments_paymentid_seq'::regclass);


--
-- TOC entry 3792 (class 2604 OID 16556)
-- Name: productcolors colorid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productcolors ALTER COLUMN colorid SET DEFAULT nextval('public.productcolors_colorid_seq'::regclass);


--
-- TOC entry 3793 (class 2604 OID 16557)
-- Name: productimages imageid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productimages ALTER COLUMN imageid SET DEFAULT nextval('public.productimages_imageid_seq'::regclass);


--
-- TOC entry 3795 (class 2604 OID 16558)
-- Name: productparams productid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productparams ALTER COLUMN productid SET DEFAULT nextval('public.productparams_productid_seq'::regclass);


--
-- TOC entry 3799 (class 2604 OID 16559)
-- Name: products productid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN productid SET DEFAULT nextval('public.products_productid_seq'::regclass);


--
-- TOC entry 3802 (class 2604 OID 16560)
-- Name: productsizes sizeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productsizes ALTER COLUMN sizeid SET DEFAULT nextval('public.productsizes_sizeid_seq'::regclass);


--
-- TOC entry 3803 (class 2604 OID 16561)
-- Name: reviews reviewid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN reviewid SET DEFAULT nextval('public.reviews_reviewid_seq'::regclass);


--
-- TOC entry 3806 (class 2604 OID 16562)
-- Name: savedpaymentcards cardid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.savedpaymentcards ALTER COLUMN cardid SET DEFAULT nextval('public.savedpaymentcards_cardid_seq'::regclass);


--
-- TOC entry 3809 (class 2604 OID 16563)
-- Name: shipping shippingid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipping ALTER COLUMN shippingid SET DEFAULT nextval('public.shipping_shippingid_seq'::regclass);


--
-- TOC entry 3812 (class 2604 OID 16564)
-- Name: usercoupons usercouponid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usercoupons ALTER COLUMN usercouponid SET DEFAULT nextval('public.usercoupons_usercouponid_seq'::regclass);


--
-- TOC entry 3815 (class 2604 OID 16565)
-- Name: users userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);


--
-- TOC entry 3819 (class 2604 OID 16566)
-- Name: wishlistitems wishlistitemid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlistitems ALTER COLUMN wishlistitemid SET DEFAULT nextval('public.wishlistitems_wishlistitemid_seq'::regclass);


--
-- TOC entry 4052 (class 0 OID 16391)
-- Dependencies: 215
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addresses (addressid, userid, addresstype, username, contactnumber, addressline1, addressline2, city, state, country, postalcode, createdat, updatedat, is_default) FROM stdin;
49256814	666574596	HOME	Van Nguyen	0916926321	Ha Noi	Lam Dong	Ha Noi	None	Viet Nam	80000	2025-06-14 18:41:01.082378	2025-06-15 15:27:28.062503	t
\.


--
-- TOC entry 4054 (class 0 OID 16397)
-- Dependencies: 217
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles (article_id, category, title, imglink, imgalt, author, published_date, content) FROM stdin;
1	Fashion	Clothes Retail KPIs 2021 Guide for Clothes Executives	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/blog-1.jpg	girls	Avery Thompson	2024-06-28 00:18:56.133959	In the dynamic world of fashion retail, understanding and leveraging key performance indicators (KPIs) is crucial for driving success. The "Clothes Retail KPIs 2021 Guide for Clothes Executives" offers a comprehensive overview of the most critical metrics that industry leaders should monitor. This guide delves into the intricacies of sales performance, inventory management, customer engagement, and digital transformation. By examining real-world case studies and industry trends, executives will gain actionable insights to enhance their strategic decision-making, optimize operations, and ultimately, boost profitability in an increasingly competitive market. Whether you are navigating the complexities of e-commerce or managing a chain of brick-and-mortar stores, this guide equips you with the knowledge to stay ahead in the ever-evolving apparel sector.
2	Clothes	Curbside fashion Trends: How to Win the Pickup Battle	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/blog-2.jpg	girls	Jordan Blake	2024-06-28 00:20:47.159632	In today s fast-paced retail environment, curbside pickup has emerged as a game-changer, blending convenience with style. "Curbside Fashion Trends: How to Win the Pickup Battle" provides an in-depth look at how fashion retailers can capitalize on this growing trend. This guide explores the latest curbside fashion trends, from streamlined logistics and seamless customer experiences to innovative marketing strategies. With expert insights and practical tips, retailers will learn how to enhance their curbside services, attract more customers, and stand out in a competitive market. Whether you’re a boutique owner or part of a large retail chain, this guide is your key to mastering the curbside pickup battle and driving your business forward.
3	Shoes	EBT vendors: Claim Your Share of SNAP Online Revenue	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/blog-3.jpg	girls	Morgan Ellis	2024-06-28 00:22:31.716156	With the digital transformation of the Supplemental Nutrition Assistance Program (SNAP), EBT vendors have a unique opportunity to tap into a growing market. "EBT Vendors: Claim Your Share of SNAP Online Revenue" is an essential guide for vendors looking to expand their reach and boost their revenue through online SNAP transactions. This comprehensive resource covers everything from regulatory requirements and technical integrations to marketing strategies and customer engagement tactics. By following the insights and best practices outlined in this guide, EBT vendors can streamline their operations, enhance user experiences, and effectively capture a larger share of the SNAP online market. Whether you re a seasoned vendor or new to the SNAP ecosystem, this guide will equip you with the tools and knowledge to succeed in the digital landscape.
4	Electronics	Curbside Fashion Trends: How to Win the Pickup Battle	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/blog-4.jpg	girls	Taylor Reed	2024-06-28 00:24:00.659415	As consumers increasingly turn to convenient shopping options, curbside pickup has become a crucial aspect of the retail experience. "Curbside Fashion Trends: How to Win the Pickup Battle" offers a detailed analysis of how fashion retailers can excel in this competitive space. This guide highlights the latest trends in curbside fashion, effective strategies for optimizing pickup processes, and ways to enhance customer satisfaction. By implementing the expert advice and innovative solutions presented, retailers can streamline their operations, boost sales, and create a loyal customer base. Whether you re managing a small boutique or a large retail chain, this guide is your roadmap to mastering the curbside pickup trend and achieving sustained success.
\.


--
-- TOC entry 4056 (class 0 OID 16404)
-- Dependencies: 219
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banners (bannerid, toptitle, middletitle, bottomtitle, imglink, startprice, buttontitle, redirect_link, createdat, updatedat) FROM stdin;
1	Trending Item	Women Latest Fashion Sale	starting at $	https://png.pngtree.com/background/20210710/original/pngtree-gradient-e-commerce-promotion-banner-picture-image_1043168.jpg	20.00	Shop Now	/	2024-07-10 00:54:06.964031	2025-06-15 21:37:45.488131
2	Trending Accessories	Modern Sunglasses	starting at $	https://png.pngtree.com/background/20210711/original/pngtree-blue-sky-white-background-illustration-picture-image_1135118.jpg	15.00	Shop Now	/	2024-07-10 00:54:06.964031	2025-06-15 21:37:45.488131
3	Sale Offer	New Fashion Summer Sale	starting at $	https://static.vecteezy.com/system/resources/previews/015/400/667/non_2x/background-with-sky-and-beautiful-clouds-illustration-for-flyer-banner-in-horizontal-orientation-good-weather-clear-sky-flat-style-vector.jpg	29.99	Shop Now	/	2024-07-10 00:54:06.964031	2025-06-15 21:37:45.488131
\.


--
-- TOC entry 4058 (class 0 OID 16413)
-- Dependencies: 221
-- Data for Name: cartitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cartitems (cartitemid, userid, productid, quantity, sizeid, colorid, createdat, updatedat) FROM stdin;
23701904	666574596	35000034	2	10000035	10000021	2024-07-16 01:07:48.066402	2024-07-16 16:54:16.055224
17331085	666574596	30000026	1	30000026	30000026	2025-06-15 18:28:46.432367	2025-06-15 18:28:46.432367
\.


--
-- TOC entry 4060 (class 0 OID 16419)
-- Dependencies: 223
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (categoryid, name, slug, maincategory) FROM stdin;
396120533	Shirts	9149319	FASHION
966726005	Shorts & Jeans	5146747	FASHION
911347783	Jacket	1013006	FASHION
725423327	Dress & Frock	7445707	FASHION
202560683	Innerwear	5065298	FASHION
750590918	Hosiery	8783089	FASHION
397918237	Sport	5989576	FOOTWEAR
359556955	Formal	15645563	FOOTWEAR
204267683	Boots	48377550	FOOTWEAR
251327560	Casual	47919233	FOOTWEAR
643579967	Cowboy Shoes	20719437	FOOTWEAR
642778541	Safety Shoes	40626762	FOOTWEAR
430565804	Party Wear Shoes	50670239	FOOTWEAR
249520556	Branded	31275451	FOOTWEAR
701908564	Firstcopy	18798262	FOOTWEAR
890668749	Long Shoes	19800048	FOOTWEAR
704588137	Necklace	91542032	JEWELLERY
651311796	Earrings	3558668	JEWELLERY
136330920	Couple Rings	77241548	JEWELLERY
124631722	Pendants	28022927	JEWELLERY
437537458	Crystal	2433843	JEWELLERY
914913022	Bangles	53975817	JEWELLERY
942241807	Bracelets	12910041	JEWELLERY
225360974	Nosepin	95978421	JEWELLERY
886321955	Chain	19605058	JEWELLERY
133633789	Shampoo	57724448	COSMETICS
647581779	Bodywash	38525410	COSMETICS
287894345	Facewash	53983914	COSMETICS
604915562	Makeup Kit	3367741	COSMETICS
170032536	Liner	8342637	COSMETICS
949689297	Lipstick	49431849	COSMETICS
249255664	Perfume	57656248	COSMETICS
49743134	Body Soap	89883094	COSMETICS
279512860	Scrub	48291440	COSMETICS
561330193	Hair Gel	63297659	COSMETICS
802093982	Hair Colors	3513816	COSMETICS
183994337	Hair Dye	54693788	COSMETICS
989205241	Sunscreen	67077735	COSMETICS
217256273	Skin Lotion	86801801	COSMETICS
319456917	Desktop	38688941	ELECTRONICS
237505672	Laptop	17946767	ELECTRONICS
84962408	Camera	34961444	ELECTRONICS
823874113	Tablet	71363607	ELECTRONICS
289031849	Headphone	46649940	ELECTRONICS
953684141	Smart Watch	56303032	ELECTRONICS
417528785	Smart TV	77219061	ELECTRONICS
103787219	Keyboard	13530993	ELECTRONICS
651586995	Mouse	9763889	ELECTRONICS
540135577	Microphone	24247866	ELECTRONICS
581619279	Clothes Perfume	26194481	PERFUME
28885920	Deodorant	50358792	PERFUME
140958697	Flower Fragrance	7626347	PERFUME
490127086	Air Freshener	80208421	PERFUME
741474101	Formal	4061583	WOMEN
228396634	Casual	58972715	WOMEN
695797566	Perfume	13566745	WOMEN
15072800	Cosmetics	44681500	WOMEN
659879521	Bags	9998383	WOMEN
779437084	Earrings	16555588	WOMEN
278725462	Necklace	49633548	WOMEN
188464849	Makeup Kit	10080253	WOMEN
294844724	Formal	91427207	MEN
583086156	Casual	80242466	MEN
200629899	Sports	26837036	MEN
475582934	Jacket	35990578	MEN
507914870	Sunglasses	3026581	MEN
723618655	Shirt	43601809	MEN
930057630	Wallet	28645898	MEN
912740617	TShirt	5289385	FASHION
\.


--
-- TOC entry 4062 (class 0 OID 16423)
-- Dependencies: 225
-- Data for Name: contact_queries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_queries (queryid, name, email, number, method, message) FROM stdin;
\.


--
-- TOC entry 4064 (class 0 OID 16429)
-- Dependencies: 227
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coupons (couponid, code, description, discountpercentage, maxdiscountamount, minpurchaseamount, validfrom, validuntil, createdat, updatedat) FROM stdin;
1	SUMMER2024	Summer Sale 2024	15.00	50.00	100.00	2024-06-21 00:00:00	2024-09-21 00:00:00	2024-06-21 13:45:05.864108	2024-06-21 13:45:05.864108
2	WINTER2024	Winter Wonderland Sale 2024	20.00	75.00	150.00	2024-11-01 00:00:00	2025-02-28 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
3	SPRING2025	Spring Fling Sale 2025	10.00	30.00	80.00	2025-03-01 00:00:00	2025-05-31 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
4	BLACKFRIDAY2024	Black Friday Sale 2024	50.00	100.00	200.00	2024-11-29 00:00:00	2024-11-30 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
5	CYBERMONDAY2024	Cyber Monday Sale 2024	30.00	60.00	120.00	2024-12-02 00:00:00	2024-12-03 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
6	NEWYEAR2025	New Year Sale 2025	25.00	50.00	100.00	2025-01-01 00:00:00	2025-01-15 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
\.


--
-- TOC entry 4066 (class 0 OID 16437)
-- Dependencies: 229
-- Data for Name: deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deals (dealid, productid, end_time, sold, available) FROM stdin;
1	20000023	2025-08-12 14:30:00	15	40
2	20000024	2025-08-25 09:45:00	20	40
\.


--
-- TOC entry 4068 (class 0 OID 16441)
-- Dependencies: 231
-- Data for Name: giftcards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.giftcards (cardid, cardname, cardcode, description, balance, currency, expirydate, recipientname, recipientemail, sendername, senderemail, message, createdat, updatedat, status) FROM stdin;
1	Birthday Gift	BDAY2024	Happy Birthday! Enjoy your special day with this gift card.	100.00	USD	2024-12-31	Alice Johnson	demo@demo.com	Bob Smith	bob.smith@example.com	Wishing you a fantastic birthday!	2024-06-21 21:37:03.351668	2024-06-21 21:37:03.351668	Active
2	Anniversary Gift	ANNIV2024	Happy Anniversary! Celebrate your love with this gift card.	150.00	USD	2024-11-30	John Doe	demo@demo.com	Jane Doe	jane.doe@example.com	Happy Anniversary! Love, Jane.	2024-06-21 21:37:03.351668	2024-06-21 21:37:03.351668	Active
3	Thank You Gift	THANKS2024	Thank you for your kindness and support. Enjoy this gift card.	50.00	USD	2024-10-31	Sam Wilson	demo@demo.com	Emily Clark	emily.clark@example.com	Thanks a lot, Sam. Best regards, Emily.	2024-06-21 21:37:03.351668	2024-06-21 21:37:03.351668	Active
4	Holiday Gift	HOLIDAY2024	Season Greetings! Warm wishes and happy holidays.	200.00	USD	2024-12-25	Emma Brown	demo@demo.com	Lucas Green	lucas.green@example.com	Happy Holidays! Enjoy your gift. Best, Lucas.	2024-06-21 21:37:03.351668	2024-06-21 21:37:03.351668	Active
5	Graduation Gift	GRAD2024	Congratulations on your graduation! Celebrate with this gift card.	75.00	USD	2024-09-30	Chris Lee	demo@demo.com	Pat Taylor	pat.taylor@example.com	Congrats on your achievement, Chris!	2024-06-21 21:37:03.351668	2024-06-21 21:37:03.351668	Active
\.


--
-- TOC entry 4070 (class 0 OID 16450)
-- Dependencies: 233
-- Data for Name: orderitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orderitems (orderitemid, orderid, productid, quantity, shippingid, paymentid, colorid, sizeid) FROM stdin;
12229469	43616577	20000023	1	65083528	17778109	20000023	20000023
\.


--
-- TOC entry 4071 (class 0 OID 16453)
-- Dependencies: 234
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (orderid, userid, totalamount, orderstatus, createdat, updatedat, order_code) FROM stdin;
43616577	666574596	40.00	Confirmed	2025-06-15 20:10:22.773243	2025-06-15 20:10:22.773243	IN
\.


--
-- TOC entry 4073 (class 0 OID 16460)
-- Dependencies: 236
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (paymentid, orderid, paymentmethod, paymentstatus, amount, transactionid, createdat, updatedat, billingaddress, paymentgateway_id) FROM stdin;
17778109	43616577	Payment on Delivery	Pending	20.00	TS-6231410-17778109-43616577	2025-06-15 20:10:22.780812	2025-06-15 20:10:22.780812	49256814	\N
\.


--
-- TOC entry 4075 (class 0 OID 16469)
-- Dependencies: 238
-- Data for Name: productcolors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productcolors (colorid, productid, colorname, colorclass) FROM stdin;
10000001	34000034	Brown	bg-brown-500
10000002	34000034	Black	bg-black
10000003	34100034	White	bg-white
10000004	34100034	Blue	bg-blue-500
10000005	34200034	Gray	bg-gray-500
10000006	34200034	Black	bg-black
10000007	34300034	Black	bg-black
10000008	34300034	Floral	bg-floral
10000009	34400034	Brown	bg-brown-500
10000010	34400034	Black	bg-black
10000011	34500034	Black	bg-black
10000012	34500034	Brown	bg-brown-500
10000013	34600034	Black	bg-black
10000014	34600034	Silver	bg-silver-500
10000015	34700034	Red	bg-red-500
10000016	34700034	Black	bg-black
10000017	34800034	Brown	bg-brown-500
10000018	34800034	Black	bg-black
10000019	34900034	Black	bg-black
10000020	34900034	Gray	bg-gray-500
10000021	35000034	Black	bg-black
10000022	35000034	Brown	bg-brown-500
10000023	35100034	White	bg-white
10000024	35100034	Gray	bg-gray-200
10000025	35100034	Black	bg-gray-900
20000001	20000001	Red	bg-red-400
20000002	20000002	Pink	bg-pink-400
20000003	20000003	Black	bg-black
20000004	20000004	White	bg-white
20000005	20000005	Blue	bg-blue-400
20000006	20000006	Brown	bg-yellow-700
20000007	20000007	Black	bg-black
20000008	20000008	Grey	bg-gray-400
20000009	20000009	White	bg-white
20000010	20000010	Black	bg-black
20000011	20000011	Gold	bg-yellow-500
20000012	20000012	White	bg-white
20000013	20000013	White	bg-white
20000014	20000014	Black	bg-black
20000015	20000015	Black	bg-black
20000016	20000016	Brown	bg-yellow-700
20000017	20000017	Brown	bg-yellow-700
20000018	20000018	Silver	bg-gray-300
20000019	20000019	Red	bg-red-400
20000020	20000020	Black	bg-black
20000021	20000021	Platinum	bg-gray-200
20000022	20000022	Black	bg-black
20000023	20000023	White	bg-white
20000024	20000024	Rose Gold	bg-pink-300
30000025	30000025	Blue	bg-blue-400
30000026	30000026	Gray	bg-gray-400
30000027	30000027	Pink	bg-pink-400
30000028	30000028	Brown	bg-yellow-700
\.


--
-- TOC entry 4077 (class 0 OID 16473)
-- Dependencies: 240
-- Data for Name: productimages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productimages (imageid, productid, imglink, imgalt, createdat, isprimary) FROM stdin;
1	34000034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jacket-4.jpg	Mens Winter Leathers Jacket	2024-07-05 17:29:49.259673	t
2	34100034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shirt-2.jpg	Pure Garment Dyed Cotton Shirt	2024-07-05 17:29:49.259673	t
3	34200034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jacket-6.jpg	MEN Yarn Fleece Full-Zip Jacket	2024-07-05 17:29:49.259673	t
4	34300034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/clothes-4.jpg	Black Floral Wrap Midi Skirt	2024-07-05 17:29:49.259673	t
5	34400034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shoe-2_1.jpg	Casual Men's Brown Shoes	2024-07-05 17:29:49.259673	t
6	34500034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/watch-4.jpg	Pocket Watch Leather Pouch	2024-07-05 17:29:49.259673	t
7	34600034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/watch-2.jpg	Smart Watch Vital Plus	2024-07-05 17:29:49.259673	t
8	34700034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/party-wear-2.jpg	Womens Party Wear Shoes	2024-07-05 17:29:49.259673	t
9	34800034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jacket-2.jpg	Mens Winter Leathers Jackets	2024-07-05 17:29:49.259673	t
10	34900034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/sports-4.jpg	Trekking & Running Shoes - Black	2024-07-05 17:29:49.259673	t
11	35000034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shoe-1_1.jpg	Men's Leather Formal Wear Shoes	2024-07-05 17:29:49.259673	t
12	35100034	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shorts-2.jpg	Better Basics French Terry Sweatshorts	2024-07-05 17:29:49.259673	t
2000001	20000001	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/clothes-1.jpg	Relaxed Short Full Sleeves	2024-07-05 18:25:51.266022	t
2000002	20000002	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/clothes-2.jpg	Girls Pink Embro Design Top	2024-07-05 18:25:51.266022	t
2000003	20000003	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/clothes-3.jpg	Black Floral Wrap Midi Skirt	2024-07-05 18:25:51.266022	t
2000004	20000004	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shirt-1.jpg	Pure Garment Dyed Cotton Shirt	2024-07-05 18:25:51.266022	t
2000005	20000005	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jacket-5.jpg	MEN Yarn Fleece Full-Zip Jacket	2024-07-05 18:25:51.266022	t
2000006	20000006	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jacket-1.jpg	Mens Winter Leathers Jackets	2024-07-05 18:25:51.266022	t
2000007	20000007	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jacket-3.jpg	Mens Winter Leathers Jackets	2024-07-05 18:25:51.266022	t
2000008	20000008	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shorts-1.jpg	Better Basics French Terry Sweatshorts	2024-07-05 18:25:51.266022	t
2000009	20000009	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/sports-1.jpg	Running & Trekking Shoes - White	2024-07-05 18:25:51.266022	t
2000010	20000010	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/sports-2.jpg	Trekking & Running Shoes - Black	2024-07-05 18:25:51.266022	t
2000011	20000011	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/party-wear-1.jpg	Womens Party Wear Shoes	2024-07-05 18:25:51.266022	t
2000012	20000012	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/sports-3.jpg	Sports Claw Women Shoes	2024-07-05 18:25:51.266022	t
2000013	20000013	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/sports-6.jpg	Air Trekking Shoes - White	2024-07-05 18:25:51.266022	t
2000014	20000014	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shoe-3.jpg	Boot With Suede Detail	2024-07-05 18:25:51.266022	t
2000015	20000015	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shoe-1.jpg	Men Leather Formal Wear Shoes	2024-07-05 18:25:51.266022	t
2000016	20000016	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shoe-2.jpg	Casual Men Brown Shoes	2024-07-05 18:25:51.266022	t
2000017	20000017	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/watch-3.jpg	Pocket Watch Leather Pouch	2024-07-05 18:25:51.266022	t
2000018	20000018	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jewellery-3.jpg	Silver Deer Heart Necklace	2024-07-05 18:25:51.266022	t
2000019	20000019	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/perfume.jpg	Titan 100 Ml Womens Perfume	2024-07-05 18:25:51.266022	t
2000020	20000020	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/belt.jpg	Men Leather Reversible Belt	2024-07-05 18:25:51.266022	t
2000021	20000021	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jewellery-2.jpg	Platinum Zircon Classic Ring	2024-07-05 18:25:51.266022	t
2000022	20000022	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/watch-1.jpg	Smart Watche Vital Plus	2024-07-05 18:25:51.266022	t
2000023	20000023	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/shampoo.jpg	Shampoo Conditioner Packs	2024-07-05 18:25:51.266022	t
2000024	20000024	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/jewellery-1.jpg	Rose Gold Peacock Earrings	2024-07-05 18:25:51.266022	t
30000025	30000025	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/1.jpg	Baby Fabric Shoes	2024-07-05 18:34:24.88477	t
30000026	30000026	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/2.jpg	Men Hoodies T-Shirt	2024-07-05 18:34:24.88477	t
30000027	30000027	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/3.jpg	Girls T-Shirt	2024-07-05 18:34:24.88477	t
30000028	30000028	https://codewithsadee.github.io/anon-ecommerce-website/assets/images/products/4.jpg	Woolen Hat For Men	2024-07-05 18:34:24.88477	t
\.


--
-- TOC entry 4079 (class 0 OID 16480)
-- Dependencies: 242
-- Data for Name: productparams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productparams (productid, issale, isnew, isdiscount, stars, views, sold, rating) FROM stdin;
34500034	t	f	f	0	2	0	0
20000012	f	f	t	0	2	0	0
35100034	t	f	f	0	1	0	0
34900034	t	f	f	0	1	0	0
20000009	f	f	t	0	3	0	0
34200034	f	f	f	0	1	2	0
35000034	f	f	f	0	17	5	0
20000020	f	t	f	4.5	33	6	2
34600034	f	f	f	0	14	2	1
30000028	f	t	t	0	8	0	0
20000001	t	f	f	0	0	0	0
20000002	f	t	f	0	0	0	0
20000003	f	f	t	0	0	0	0
20000004	t	f	f	0	0	0	0
20000005	f	t	f	0	0	0	0
20000006	f	f	t	0	0	0	0
20000007	t	f	f	0	0	0	0
20000008	f	t	f	0	0	0	0
20000010	t	f	f	0	0	0	0
20000011	f	t	f	0	0	0	0
20000013	t	f	f	0	0	0	0
20000014	f	t	f	0	0	0	0
20000015	f	f	t	0	0	0	0
20000016	t	f	f	0	0	0	0
20000017	f	t	f	0	0	0	0
20000018	f	f	t	0	0	0	0
20000021	f	f	t	0	0	0	0
20000022	t	f	f	0	0	0	0
34000034	f	f	t	0	0	0	0
34100034	t	f	f	0	0	0	0
34300034	f	t	f	0	0	0	0
34400034	f	f	f	0	0	0	0
34700034	t	f	f	0	0	0	0
34800034	f	f	f	0	0	0	0
30000025	f	t	t	0	14	12	0
20000024	f	f	t	0	8	0	0
20000019	t	f	f	0	3	0	0
30000027	f	t	t	0	2	0	0
30000026	f	t	t	0	8	0	0
20000023	f	t	f	0	5	1	0
\.


--
-- TOC entry 4081 (class 0 OID 16487)
-- Dependencies: 244
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (productid, title, description, categoryid, price, discount, stock, tags, createdat, updatedat, imgid, seller_id) FROM stdin;
34000034	Mens Winter Leathers Jackets	High-quality winter leather jacket for men, perfect for cold weather.	475582934	75.00	48.00	100	jacket, winter, leather, men	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	1	1
34100034	Pure Garment Dyed Cotton Shirt	Pure garment dyed cotton shirt, comfortable and stylish.	723618655	56.00	45.00	100	shirt, cotton, men	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	2	1
34200034	MEN Yarn Fleece Full-Zip Jacket	Men yarn fleece full-zip jacket, warm and cozy.	475582934	65.00	58.00	100	jacket, fleece, men	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	3	1
34300034	Black Floral Wrap Midi Skirt	Black floral wrap midi skirt, elegant and fashionable.	228396634	35.00	25.00	100	skirt, floral, women	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	4	1
34400034	Casual Men's Brown Shoes	Casual men's brown shoes, comfortable and stylish.	583086156	105.00	99.00	100	shoes, casual, men	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	5	1
34500034	Pocket Watch Leather Pouch	Pocket watch leather pouch, stylish and durable.	953684141	170.00	150.00	100	watch, leather, pouch	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	6	1
34600034	Smart Watch Vital Plus	Smart watch vital plus, advanced features and stylish design.	953684141	120.00	100.00	100	watch, smart, men	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	7	1
34700034	Womens Party Wear Shoes	Women's party wear shoes, stylish and comfortable.	430565804	30.00	25.00	100	shoes, party, women	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	8	1
34800034	Mens Winter Leathers Jackets	High-quality winter leather jacket for men, perfect for cold weather.	475582934	45.00	32.00	100	jacket, winter, leather, men	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	9	1
34900034	Trekking & Running Shoes - Black	Trekking & running shoes, perfect for outdoor activities.	397918237	64.00	58.00	100	shoes, trekking, running	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	10	1
35000034	Men's Leather Formal Wear Shoes	Men's leather formal wear shoes, elegant and comfortable.	294844724	65.00	50.00	100	shoes, formal, men	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	11	1
35100034	Better Basics French Terry Sweatshorts	Better basics french terry sweatshorts, comfortable and stylish.	966726005	85.00	78.00	100	shorts, sweatshorts, men	2024-07-05 17:29:49.259673	2024-07-05 17:29:49.259673	12	1
20000001	Relaxed Short Full Sleeves	Comfortable and relaxed short full sleeves for casual wear	396120533	45.00	12.00	100	casual,summer,short	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000001	1
20000002	Girls Pink Embro Design Top	Stylish pink embroidered design top for girls	228396634	61.00	9.00	100	stylish,pink,embroidered	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000002	1
20000003	Black Floral Wrap Midi Skirt	Elegant black floral wrap midi skirt	228396634	76.00	25.00	100	elegant,black,floral	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000003	1
20000004	Pure Garment Dyed Cotton Shirt	Pure garment dyed cotton shirt for everyday use	723618655	68.00	31.00	100	everyday,cotton,shirt	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000004	1
20000005	MEN Yarn Fleece Full-Zip Jacket	Comfortable yarn fleece full-zip jacket for men	475582934	61.00	11.00	100	comfortable,fleece,men	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000005	1
20000006	Mens Winter Leathers Jackets	Warm and stylish winter leather jackets for men	475582934	32.00	20.00	100	warm,stylish,winter	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000006	1
20000007	Mens Winter Leathers Jackets	Warm and stylish winter leather jackets for men	475582934	50.00	25.00	100	warm,stylish,winter	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000007	1
20000008	Better Basics French Terry Sweatshorts	Comfortable French Terry sweatshorts	966726005	20.00	10.00	100	comfortable,french,terry	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000008	1
20000009	Running & Trekking Shoes - White	Durable running and trekking shoes in white	397918237	49.00	15.00	100	durable,running,trekking	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000009	1
20000010	Trekking & Running Shoes - Black	Durable trekking and running shoes in black	397918237	78.00	36.00	100	durable,trekking,running	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000010	1
20000011	Womens Party Wear Shoes	Elegant party wear shoes for women	430565804	94.00	42.00	100	elegant,party,shoes	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000011	1
20000017	Pocket Watch Leather Pouch	Classic leather pouch for pocket watches	953684141	50.00	34.00	100	classic,leather,pouch	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000017	1
20000018	Silver Deer Heart Necklace	Elegant silver deer heart necklace	704588137	84.00	30.00	100	elegant,silver,deer	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000018	1
20000019	Titan 100 Ml Womens Perfume	Refreshing Titan 100 ml perfume for women	695797566	42.00	10.00	100	refreshing,titan,perfume	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000019	1
20000020	Men Leather Reversible Belt	Stylish reversible leather belt for men	294844724	24.00	10.00	100	stylish,leather,reversible	2024-07-05 18:25:51.266022	2024-07-05 18:25:51.266022	2000020	1
30000025	Baby Fabric Shoes	Comfortable baby fabric shoes for all-day wear.	251327560	5.00	4.00	100	baby,shoes,fabric	2024-07-05 18:34:24.88477	2024-07-05 18:34:24.88477	30000025	1
30000026	Men Hoodies T-Shirt	Stylish and comfortable hoodies t-shirt for men.	912740617	5.00	4.00	100	mens,hoodies,t-shirt	2024-07-05 18:34:24.88477	2024-07-05 18:34:24.88477	30000026	1
30000027	Girls T-Shirt	Fashionable girls t-shirt with unique design.	912740617	5.00	4.00	100	girls,t-shirt,fashion	2024-07-05 18:34:24.88477	2024-07-05 18:34:24.88477	30000027	1
30000028	Woolen Hat For Men	Warm woolen hat for men.	583086156	5.00	4.00	100	mens,hat,woolen	2024-07-05 18:34:24.88477	2024-07-05 18:34:24.88477	30000028	1
20000012	Sports Claw Women Shoes	High-performance sports claw shoes for women	397918237	65.00	54.00	100	high-performance,sports,claw	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000012	1
20000013	Air Trekking Shoes - White	Air trekking shoes in white for outdoor activities	397918237	55.00	52.00	100	air,trekking,white	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000013	1
20000014	Boot With Suede Detail	Stylish boots with suede detail	204267683	30.00	20.00	100	stylish,boots,suede	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000014	1
20000015	Men Leather Formal Wear Shoes	Elegant leather formal wear shoes for men	359556955	78.00	56.00	100	elegant,leather,formal	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000015	1
20000016	Casual Men Brown Shoes	Casual brown shoes for men	359556955	55.00	50.00	100	casual,brown,men	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000016	1
20000021	Platinum Zircon Classic Ring	Elegant platinum zircon classic ring	136330920	72.00	62.00	100	elegant,platinum,zircon	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000021	1
20000022	Smart Watche Vital Plus	Advanced smart watch Vital Plus	953684141	78.00	56.00	100	advanced,smart,vital	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000022	1
20000023	Shampoo Conditioner Packs	Refreshing shampoo and conditioner packs	136330920	30.00	20.00	100	refreshing,shampoo,conditioner	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000023	1
20000024	Rose Gold Peacock Earrings	Elegant rose gold peacock earrings	651311796	30.00	20.00	100	elegant,rose,peacock	2024-07-05 18:25:51.266022	2024-07-06 19:29:10.431015	2000024	1
\.


--
-- TOC entry 4083 (class 0 OID 16495)
-- Dependencies: 246
-- Data for Name: productsizes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productsizes (sizeid, productid, sizename, instock) FROM stdin;
10000001	34000034	S	t
10000002	34000034	M	t
10000003	34000034	L	t
10000004	34000034	XL	t
10000005	34100034	S	t
10000006	34100034	M	t
10000007	34100034	L	t
10000008	34100034	XL	t
10000009	34200034	S	t
10000010	34200034	M	t
10000011	34200034	L	t
10000012	34200034	XL	t
10000013	34300034	S	t
10000014	34300034	M	t
10000015	34300034	L	t
10000016	34300034	XL	t
10000017	34400034	7	t
10000018	34400034	8	t
10000019	34400034	9	t
10000020	34400034	10	t
10000021	34500034	One Size	t
10000022	34600034	One Size	t
10000023	34700034	7	t
10000024	34700034	8	t
10000025	34700034	9	t
10000026	34700034	10	t
10000027	34800034	S	t
10000028	34800034	M	t
10000029	34800034	L	t
10000030	34800034	XL	t
10000031	34900034	7	t
10000032	34900034	8	t
10000033	34900034	9	t
10000034	34900034	10	t
10000035	35000034	7	t
10000036	35000034	8	t
10000037	35000034	9	t
10000038	35000034	10	t
10000039	35100034	S	t
10000040	35100034	M	t
10000041	35100034	L	t
10000042	35100034	XL	t
20000001	20000001	S	t
20000002	20000002	M	t
20000003	20000003	L	t
20000004	20000004	XL	t
20000005	20000005	XXL	t
20000006	20000006	M	t
20000007	20000007	L	t
20000008	20000008	XL	t
20000009	20000009	10	t
20000010	20000010	9	t
20000011	20000011	8	t
20000012	20000012	7	t
20000013	20000013	10	t
20000014	20000014	9	t
20000015	20000015	8	t
20000016	20000016	7	t
20000017	20000017	Default	t
20000018	20000018	Default	t
20000019	20000019	Default	t
20000020	20000020	Default	t
20000021	20000021	6	t
20000022	20000022	7	t
20000023	20000023	Default	t
20000024	20000024	Default	t
30000025	30000025	S	t
30000026	30000026	M	t
30000027	30000027	L	t
30000028	30000028	XL	t
\.


--
-- TOC entry 4085 (class 0 OID 16499)
-- Dependencies: 248
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (reviewid, userid, productid, rating, comment, createdat, updatedat, title) FROM stdin;
\.


--
-- TOC entry 4087 (class 0 OID 16508)
-- Dependencies: 250
-- Data for Name: savedpaymentcards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.savedpaymentcards (cardid, userid, cardnumber, cardholdername, expirymonth, expiryyear, cardtype, createdat, updatedat) FROM stdin;
\.


--
-- TOC entry 4089 (class 0 OID 16514)
-- Dependencies: 252
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sellers (seller_id, name, email, password, phone_number, company_name, tax_id, registration_number, store_url, business_description, profile_image_url, join_date, rating, addressline1, addressline2, city, state, country, postalcode) FROM stdin;
1	John Doe	johndoe@example.com	password123	1234567890	Doe Electronics	TX12345678	REG123456	http://doeelectronics.example.com	Leading supplier of electronic gadgets.	http://doeelectronics.example.com/profile.jpg	2023-01-15	4.50	123 Main St	Suite 100	New York	NY	USA	10001
2	Jane Smith	janesmith@example.com	password456	0987654321	Smith Fashion	TX87654321	REG654321	http://smithfashion.example.com	High-quality fashion apparel and accessories.	http://smithfashion.example.com/profile.jpg	2022-03-10	4.80	456 Market St		San Francisco	CA	USA	94105
3	Alice Johnson	alicejohnson@example.com	password789	5555555555	Johnson Home Goods	TX11223344	REG112233	http://johnsonhomegoods.example.com	Home goods and furniture.	http://johnsonhomegoods.example.com/profile.jpg	2021-07-22	4.30	789 Broadway	Apt 5	Los Angeles	CA	USA	90001
\.


--
-- TOC entry 4090 (class 0 OID 16519)
-- Dependencies: 253
-- Data for Name: shipping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shipping (shippingid, orderid, addressid, shippingmethod, shippingcost, trackingnumber, shippedat, deliveredat, createdat, updatedat) FROM stdin;
65083528	43616577	49256814	Express	5.00	IN43616577-17778109-TS-6231410-17778109-43616577	\N	2025-06-20 20:10:22	2025-06-15 20:10:22.778799	2025-06-15 20:10:22.778799
\.


--
-- TOC entry 4092 (class 0 OID 16525)
-- Dependencies: 255
-- Data for Name: usercoupons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usercoupons (usercouponid, userid, couponid, usedat, createdat, updatedat) FROM stdin;
1	666574596	1	2024-07-01 00:00:00	2024-06-21 13:45:05.864108	2024-06-21 13:45:05.864108
2	666574596	2	2024-12-15 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
3	666574596	3	2025-03-10 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
4	666574596	4	2024-11-29 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
5	666574596	5	2024-12-02 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
6	666574596	6	2025-01-01 00:00:00	2024-06-21 13:46:37.489218	2024-06-21 13:46:37.489218
\.


--
-- TOC entry 4094 (class 0 OID 16531)
-- Dependencies: 257
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (userid, username, email, password, mobile_number, dob, creation_ip, role, createdat, updatedat, update_ip, otp, promotional) FROM stdin;
666574596	Nguyễn Thế Văn	vannguyen14001@gmail.com	$2b$10$QT3qyqUNwoPpYNfoaeu3ieZJRp29OwoGXvm5vdR9px3hfKbcN8OMG	0916926321	2004-03-15	::1	customer	2025-06-15 15:12:05.126362	2025-06-15 15:20:10.914278	::1	\N	t
\.


--
-- TOC entry 4096 (class 0 OID 16540)
-- Dependencies: 259
-- Data for Name: wishlistitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wishlistitems (wishlistitemid, userid, productid, addedat) FROM stdin;
18501881	666574596	30000026	2024-07-10 20:14:58.572349
\.


--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 216
-- Name: addresses_addressid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_addressid_seq', 1, true);


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 218
-- Name: articles_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_article_id_seq', 1, false);


--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 220
-- Name: banners_bannerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banners_bannerid_seq', 1, false);


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 222
-- Name: cartitems_cartitemid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cartitems_cartitemid_seq', 1, false);


--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 224
-- Name: categories_categoryid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_categoryid_seq', 1, false);


--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 226
-- Name: contact_queries_queryid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_queries_queryid_seq', 1, false);


--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 228
-- Name: coupons_couponid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupons_couponid_seq', 1, false);


--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 230
-- Name: deals_dealid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deals_dealid_seq', 2, true);


--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 232
-- Name: giftcards_cardid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.giftcards_cardid_seq', 1, false);


--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 235
-- Name: orders_orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orderid_seq', 1, false);


--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 237
-- Name: payments_paymentid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_paymentid_seq', 1, false);


--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 239
-- Name: productcolors_colorid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productcolors_colorid_seq', 1, false);


--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 241
-- Name: productimages_imageid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productimages_imageid_seq', 1, false);


--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 243
-- Name: productparams_productid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productparams_productid_seq', 1, false);


--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 245
-- Name: products_productid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_productid_seq', 1, false);


--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 247
-- Name: productsizes_sizeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productsizes_sizeid_seq', 1, false);


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 249
-- Name: reviews_reviewid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_reviewid_seq', 1, false);


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 251
-- Name: savedpaymentcards_cardid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.savedpaymentcards_cardid_seq', 1, false);


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 254
-- Name: shipping_shippingid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shipping_shippingid_seq', 1, false);


--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 256
-- Name: usercoupons_usercouponid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usercoupons_usercouponid_seq', 1, false);


--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 258
-- Name: users_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_userid_seq', 1, false);


--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 260
-- Name: wishlistitems_wishlistitemid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wishlistitems_wishlistitemid_seq', 1, false);


--
-- TOC entry 3823 (class 2606 OID 16568)
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (addressid);


--
-- TOC entry 3825 (class 2606 OID 16570)
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (article_id);


--
-- TOC entry 3827 (class 2606 OID 16572)
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (bannerid);


--
-- TOC entry 3829 (class 2606 OID 16574)
-- Name: cartitems cartitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cartitems
    ADD CONSTRAINT cartitems_pkey PRIMARY KEY (cartitemid);


--
-- TOC entry 3831 (class 2606 OID 16576)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categoryid);


--
-- TOC entry 3833 (class 2606 OID 16578)
-- Name: categories categories_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_key UNIQUE (slug);


--
-- TOC entry 3835 (class 2606 OID 16580)
-- Name: contact_queries contact_queries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_queries
    ADD CONSTRAINT contact_queries_pkey PRIMARY KEY (queryid);


--
-- TOC entry 3837 (class 2606 OID 16582)
-- Name: coupons coupons_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_code_key UNIQUE (code);


--
-- TOC entry 3839 (class 2606 OID 16584)
-- Name: coupons coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_pkey PRIMARY KEY (couponid);


--
-- TOC entry 3841 (class 2606 OID 16586)
-- Name: deals deals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deals
    ADD CONSTRAINT deals_pkey PRIMARY KEY (dealid);


--
-- TOC entry 3843 (class 2606 OID 16588)
-- Name: giftcards giftcards_cardcode_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.giftcards
    ADD CONSTRAINT giftcards_cardcode_key UNIQUE (cardcode);


--
-- TOC entry 3845 (class 2606 OID 16590)
-- Name: giftcards giftcards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.giftcards
    ADD CONSTRAINT giftcards_pkey PRIMARY KEY (cardid);


--
-- TOC entry 3847 (class 2606 OID 16592)
-- Name: orderitems orderitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_pkey PRIMARY KEY (orderitemid);


--
-- TOC entry 3849 (class 2606 OID 16594)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);


--
-- TOC entry 3851 (class 2606 OID 16596)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (paymentid);


--
-- TOC entry 3853 (class 2606 OID 16598)
-- Name: productcolors productcolors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productcolors
    ADD CONSTRAINT productcolors_pkey PRIMARY KEY (colorid);


--
-- TOC entry 3855 (class 2606 OID 16600)
-- Name: productimages productimages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productimages
    ADD CONSTRAINT productimages_pkey PRIMARY KEY (imageid);


--
-- TOC entry 3857 (class 2606 OID 16602)
-- Name: productparams productparams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productparams
    ADD CONSTRAINT productparams_pkey PRIMARY KEY (productid);


--
-- TOC entry 3859 (class 2606 OID 16604)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);


--
-- TOC entry 3861 (class 2606 OID 16606)
-- Name: productsizes productsizes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productsizes
    ADD CONSTRAINT productsizes_pkey PRIMARY KEY (sizeid);


--
-- TOC entry 3863 (class 2606 OID 16608)
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (reviewid);


--
-- TOC entry 3865 (class 2606 OID 16610)
-- Name: savedpaymentcards savedpaymentcards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.savedpaymentcards
    ADD CONSTRAINT savedpaymentcards_pkey PRIMARY KEY (cardid);


--
-- TOC entry 3867 (class 2606 OID 16612)
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (seller_id);


--
-- TOC entry 3869 (class 2606 OID 16614)
-- Name: shipping shipping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipping
    ADD CONSTRAINT shipping_pkey PRIMARY KEY (shippingid);


--
-- TOC entry 3871 (class 2606 OID 16616)
-- Name: usercoupons usercoupons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usercoupons
    ADD CONSTRAINT usercoupons_pkey PRIMARY KEY (usercouponid);


--
-- TOC entry 3873 (class 2606 OID 16618)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3875 (class 2606 OID 16620)
-- Name: users users_mobile_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_mobile_number_key UNIQUE (mobile_number);


--
-- TOC entry 3877 (class 2606 OID 16622)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);


--
-- TOC entry 3879 (class 2606 OID 16624)
-- Name: wishlistitems wishlistitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlistitems
    ADD CONSTRAINT wishlistitems_pkey PRIMARY KEY (wishlistitemid);


--
-- TOC entry 3899 (class 2620 OID 16625)
-- Name: addresses update_address_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_address_updatedat_trigger BEFORE UPDATE ON public.addresses FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3901 (class 2620 OID 16626)
-- Name: cartitems update_cartitem_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_cartitem_updatedat_trigger BEFORE UPDATE ON public.cartitems FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3902 (class 2620 OID 16627)
-- Name: giftcards update_giftcard_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_giftcard_updatedat_trigger BEFORE UPDATE ON public.giftcards FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3903 (class 2620 OID 16628)
-- Name: orders update_order_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_order_updatedat_trigger BEFORE UPDATE ON public.orders FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3904 (class 2620 OID 16629)
-- Name: payments update_payment_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_payment_updatedat_trigger BEFORE UPDATE ON public.payments FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3905 (class 2620 OID 16630)
-- Name: products update_product_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_product_updatedat_trigger BEFORE UPDATE ON public.products FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3906 (class 2620 OID 16631)
-- Name: reviews update_review_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_review_updatedat_trigger BEFORE UPDATE ON public.reviews FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3907 (class 2620 OID 16632)
-- Name: shipping update_shipping_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_shipping_updatedat_trigger BEFORE UPDATE ON public.shipping FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3900 (class 2620 OID 16633)
-- Name: banners update_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_updatedat_trigger BEFORE UPDATE ON public.banners FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3908 (class 2620 OID 16634)
-- Name: users update_updatedat_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER update_updatedat_trigger BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();


--
-- TOC entry 3880 (class 2606 OID 16635)
-- Name: addresses addresses_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid) ON DELETE CASCADE;


--
-- TOC entry 3881 (class 2606 OID 16640)
-- Name: cartitems cartitems_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cartitems
    ADD CONSTRAINT cartitems_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- TOC entry 3882 (class 2606 OID 16645)
-- Name: cartitems cartitems_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cartitems
    ADD CONSTRAINT cartitems_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid) ON DELETE CASCADE;


--
-- TOC entry 3883 (class 2606 OID 16650)
-- Name: orderitems orderitems_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);


--
-- TOC entry 3884 (class 2606 OID 16655)
-- Name: orderitems orderitems_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid);


--
-- TOC entry 3885 (class 2606 OID 16660)
-- Name: orders orders_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);


--
-- TOC entry 3886 (class 2606 OID 16665)
-- Name: payments payments_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid) ON DELETE CASCADE;


--
-- TOC entry 3887 (class 2606 OID 16670)
-- Name: productcolors productcolors_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productcolors
    ADD CONSTRAINT productcolors_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- TOC entry 3888 (class 2606 OID 16675)
-- Name: productimages productimages_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productimages
    ADD CONSTRAINT productimages_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- TOC entry 3889 (class 2606 OID 16680)
-- Name: productsizes productsizes_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productsizes
    ADD CONSTRAINT productsizes_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- TOC entry 3890 (class 2606 OID 16685)
-- Name: reviews reviews_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- TOC entry 3891 (class 2606 OID 16690)
-- Name: reviews reviews_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid) ON DELETE CASCADE;


--
-- TOC entry 3892 (class 2606 OID 16695)
-- Name: savedpaymentcards savedpaymentcards_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.savedpaymentcards
    ADD CONSTRAINT savedpaymentcards_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);


--
-- TOC entry 3893 (class 2606 OID 16700)
-- Name: shipping shipping_addressid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipping
    ADD CONSTRAINT shipping_addressid_fkey FOREIGN KEY (addressid) REFERENCES public.addresses(addressid) ON DELETE CASCADE;


--
-- TOC entry 3894 (class 2606 OID 16705)
-- Name: shipping shipping_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipping
    ADD CONSTRAINT shipping_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid) ON DELETE CASCADE;


--
-- TOC entry 3895 (class 2606 OID 16710)
-- Name: usercoupons usercoupons_couponid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usercoupons
    ADD CONSTRAINT usercoupons_couponid_fkey FOREIGN KEY (couponid) REFERENCES public.coupons(couponid);


--
-- TOC entry 3896 (class 2606 OID 16715)
-- Name: usercoupons usercoupons_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usercoupons
    ADD CONSTRAINT usercoupons_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);


--
-- TOC entry 3897 (class 2606 OID 16720)
-- Name: wishlistitems wishlistitems_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlistitems
    ADD CONSTRAINT wishlistitems_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid) ON DELETE CASCADE;


--
-- TOC entry 3898 (class 2606 OID 16725)
-- Name: wishlistitems wishlistitems_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlistitems
    ADD CONSTRAINT wishlistitems_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);


-- Completed on 2025-06-15 23:48:50 +07

--
-- PostgreSQL database dump complete
--

