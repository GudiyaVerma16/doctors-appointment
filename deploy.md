# 🚀 Deployment Guide

## Quick Deployment Steps

### 1. Backend (Render)

1. Go to [Render.com](https://render.com)
2. Create new Web Service
3. Connect GitHub repo
4. Set Root Directory: `backend`
5. Build Command: `npm install`
6. Start Command: `npm start`
7. Add environment variables (see below)

### 2. Frontend (Vercel)

1. Go to [Vercel.com](https://vercel.com)
2. Create new project
3. Import GitHub repo
4. Set Root Directory: `frontend`
5. Add environment variable: `VITE_BACKEND_URL=https://your-backend-url.onrender.com`

### 3. Admin Panel (Vercel)

1. Create another Vercel project
2. Set Root Directory: `admin`
3. Add environment variable: `VITE_BACKEND_URL=https://your-backend-url.onrender.com`

## Environment Variables

### Backend (Render)

```
MONGODB_URI=mongodb+srv://sourabh:root@cluster0.rfcfzhl.mongodb.net/doctor-appointment?retryWrites=true&w=majority
JWT_SECRET=mysecretkey123456789
ADMIN_EMAIL=admin@example.com
ADMIN_PASSWORD=admin123
CLOUDINARY_NAME=dmomqlnta
CLOUDINARY_API_KEY=873528867351648
CLOUDINARY_SECRET_KEY=a8xVVT9GULsJ3rOCZoFodFS8fb4
```

### Frontend/Admin (Vercel)

```
VITE_BACKEND_URL=https://your-backend-url.onrender.com
```

## URLs After Deployment

- **Backend API**: https://your-app-name.onrender.com
- **Frontend**: https://your-frontend-project.vercel.app
- **Admin Panel**: https://your-admin-project.vercel.app

## Important Notes

- Replace `your-app-name` with your actual Render app name
- Replace `your-frontend-project` with your actual Vercel project name
- Replace `your-admin-project` with your actual admin Vercel project name
- Update MongoDB Atlas Network Access to allow Render IPs
