# Doctor Appointment Management System 🏥

A full-stack doctor appointment booking system built with Node.js, Express, MongoDB, React, and Vite.  
This README covers **setup, deployment, and troubleshooting** based on real-world issues encountered during development and deployment.

## 🚀 Features

- **User Management:** Patient registration and authentication
- **Doctor Management:** Admin can add, edit, and manage doctors
- **Appointment Booking:** Patients can book and manage appointments
- **Admin Panel:** Dashboard for managing doctors, appointments, and users
- **Image Upload:** Cloudinary integration for doctor profile images

## 🛠️ Technologies Used

- **Backend:** Node.js, Express, MongoDB (Atlas), Mongoose, JWT, Cloudinary, bcrypt
- **Frontend:** React, Vite, Tailwind CSS, React Router, Axios, React Toastify
- **Admin Panel:** React, Vite, Tailwind CSS

## 📁 Project Structure

```
doctor-appointment-website/
├── backend/          # Node.js API server
├── frontend/         # React user interface
├── admin/            # React admin panel
└── setup.sh          # Quick setup script
```

## 🚦 Quick Start

### 1. **Clone the Repository**

```bash
git clone <your-repo-url>
cd doctor-appointment-website
```

### 2. **Run the Setup Script**

This will create all necessary `.env` files and update configuration files.

```bash
./setup.sh
```

### 3. **Install Dependencies**

```bash
# Backend
cd backend && npm install

# Frontend
cd ../frontend && npm install

# Admin
cd ../admin && npm install
```

### 4. **Start the Servers (Development)**

Open three terminals:

```bash
# Terminal 1 - Backend
cd backend && npm run server

# Terminal 2 - Frontend
cd frontend && npm run dev

# Terminal 3 - Admin
cd admin && npm run dev
```

### 5. **Access the App**

- **Frontend:** http://localhost:5173
- **Admin Panel:** http://localhost:5174
- **Backend API:** http://localhost:4000

### 6. **Environment Variables**

#### **Backend (`backend/.env`):**

```
MONGODB_URI=mongodb+srv://<username>:<password>@cluster0.xxxxx.mongodb.net/<database>?retryWrites=true&w=majority
JWT_SECRET=your_jwt_secret
ADMIN_EMAIL=admin@example.com
ADMIN_PASSWORD=admin123
CLOUDINARY_NAME=your_cloudinary_name
CLOUDINARY_API_KEY=your_cloudinary_api_key
CLOUDINARY_SECRET_KEY=your_cloudinary_secret
```

#### **Frontend/Admin (`frontend/.env`, `admin/.env`):**

```
VITE_BACKEND_URL=http://localhost:4000
```

## 🌐 Deployment

### **Backend (Render)**

- Deploy the `backend` folder as a web service on [Render](https://render.com).
- Set all environment variables in the Render dashboard.
- Use the correct `MONGODB_URI` (e.g., `/prescripto` if that's where your data is).

### **Frontend/Admin (Vercel)**

- Deploy the `frontend` and `admin` folders as separate projects on [Vercel](https://vercel.com).
- Set `VITE_BACKEND_URL` to your Render backend URL (e.g., `https://your-backend.onrender.com`).

## 🐞 Common Issues & Solutions

### 1. **CORS Errors**

- **Symptom:** "No 'Access-Control-Allow-Origin' header is present..."
- **Fix:**
  - Add your deployed frontend and admin URLs to the CORS `origin` array in `backend/server.js`.
  - Example:
    ```js
    const corsOptions = {
      origin: [
        "http://localhost:5173",
        "http://localhost:5174",
        "https://your-frontend.vercel.app",
        "https://your-admin.vercel.app",
      ],
      credentials: true,
    };
    app.use(cors(corsOptions));
    ```
  - **Redeploy your backend** after making changes.

### 2. **Wrong Database / Missing Data**

- **Symptom:** Data (e.g., doctors) not showing up, or different data in dev and prod.
- **Fix:**
  - Make sure your `MONGODB_URI` points to the correct database (e.g., `/prescripto` if that's where your data is).
  - Update the environment variable on Render and **redeploy**.

### 3. **404 Errors on API Endpoints**

- **Symptom:** "Failed to load resource: the server responded with a status of 404"
- **Fix:**
  - Check that your frontend is calling the correct backend endpoint (e.g., `/api/doctor/all-doctors` not `/api/doctor/list`).
  - Update frontend code if needed.

### 4. **Cloudinary "Invalid api_key demo" Error**

- **Symptom:** Error when uploading images.
- **Fix:**
  - Set your real Cloudinary credentials in `backend/.env`.
  - Restart your backend after updating.

### 5. **GitHub Push Permission Errors**

- **Symptom:** "Permission denied" or "403" when pushing to GitHub.
- **Fix:**
  - Use a Personal Access Token (PAT) with `repo` scope.
  - Make sure you have write access to the repository.
  - If pushing for a friend, ensure you are added as a collaborator.

### 6. **Frontend/Admin Not Communicating with Backend**

- **Symptom:** Network errors, no data loading.
- **Fix:**
  - Set `VITE_BACKEND_URL` in both `frontend/.env` and `admin/.env` to your backend's deployed URL.
  - Redeploy frontend/admin after updating.

### 7. **Multiple Databases in MongoDB Atlas**

- **Symptom:** Data appears in one database but not another.
- **Fix:**
  - Always use the same database name in your connection string for all environments.
  - Example: `/prescripto` if that's where your data is.

## 📝 Author & License

- **Author:** Your Name
- **License:** MIT

## **Summary of Issues Faced**

- CORS misconfiguration (fixed by whitelisting exact URLs)
- Wrong MongoDB database in connection string
- Cloudinary credentials not set
- GitHub push permission errors (fixed with PAT and correct repo access)
- Frontend calling wrong API endpoints
- Data not syncing between local and deployed environments

## **If you follow this README, you should be able to set up, run, and deploy the project smoothly!**
