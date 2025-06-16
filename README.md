# 🛒 EcommerceSHOP – Hướng dẫn cài đặt và khởi chạy

## 📥 1. Clone dự án

```bash
git clone https://github.com/zannngyn/ecommerceSHOP
```

## 📂 2. Truy cập vào thư mục dự án

```bash
cd ecommerceSHOP-main
```

## 📦 3. Cài đặt dependencies

### 🔧 Cho **server**:

```bash
cd Server
rm -rf node_modules package-lock.json
npm install
```

### 🎨 Cho **client**:

```bash
cd ../Client
rm -rf node_modules package-lock.json
npm install
```

## 🧪 4. Thiết lập biến môi trường `.env`

Tạo file `.env` cho **client** và **server**, sau đó thêm các biến như sau:

### 📁 **Client – `Client/.env`**

```env
BACKEND_URL=http://localhost:3500
AUTH_KEY=your_secure_key
JWT_KEY=your_jwt_key

NEXT_PUBLIC_FRONTEND_GOOGLE_CLIENT_ID=your_google_client_id
NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY=your_stripe_key
NEXT_PUBLIC_DOMAIN=http://localhost:3000
```

> 🔒 **Chú ý**: Các biến `NEXT_PUBLIC_` là bắt buộc với Next.js để sử dụng trên trình duyệt.

### 📁 **Server – `Server/.env`**

```env
PORT=3500
FRONTEND_SERVER_ORIGIN=http://localhost:3000

DB_USER=your_db_username
DB_PASS=your_db_password
DB_HOST=localhost
DB_PORT=5432
DB_NAME=ecommerce

SMTP_USER=your_email@example.com
SMTP_SUPPORT=support@example.com
SMTP_HOST=smtp.gmail.com
SMTP_SENDERNAME=Ecommerce Support
SMTP_PASS=your_smtp_password

JWT_ENCRYPTION_KEY=your_encryption_key
JWT_AUTH_KEY=your_auth_key

GOOGLE_CLIENT_ID=your_google_client_id
GOOGLE_CLIENT_SECRET=your_google_client_secret

STRIPE_PUBLISHABLE_KEY=your_stripe_key
```

## 🚀 5. Chạy dự án

### ✅ Server

```bash
cd Server
npm run dev
```

> Sử dụng `nodemon` + `ts-node` để chạy ở chế độ phát triển. Server khởi động ở `http://localhost:3500`.

### ✅ Client

```bash
cd Client
npm run dev
```

> Chạy ứng dụng frontend bằng **Next.js** ở `http://localhost:3000`.
