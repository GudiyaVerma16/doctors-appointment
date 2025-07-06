# Doctor Appointment Management System 🏥

A comprehensive doctor appointment booking system built with modern web technologies.

## 🚀 Features

- **User Management**: Patient registration and authentication
- **Doctor Management**: Admin can add, edit, and manage doctors
- **Appointment Booking**: Patients can book appointments with doctors
- **Admin Panel**: Complete admin dashboard for managing the system
- **Real-time Updates**: Live updates for appointments and availability
- **Image Upload**: Cloudinary integration for doctor profile images

## 🛠️ Technologies Used

### Backend

- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **MongoDB** - Database (with Mongoose ODM)
- **JWT** - Authentication
- **Cloudinary** - Image storage
- **bcrypt** - Password hashing

### Frontend

- **React.js** - UI library
- **Vite** - Build tool
- **Tailwind CSS** - Styling
- **React Router** - Navigation
- **Axios** - HTTP client
- **React Toastify** - Notifications

## 📁 Project Structure

```
doctor-appointment-website/
├── backend/          # Node.js API server
├── frontend/         # React user interface
├── admin/           # React admin panel
└── setup.sh         # Quick setup script
```

## 🚦 Quick Start

### Prerequisites

- Node.js (v16 or higher)
- MongoDB Atlas account
- Cloudinary account

### Installation

1. **Clone the repository**

   ```bash
   git clone <your-repo-url>
   cd doctor-appointment-website
   ```

2. **Run the setup script**

   ```bash
   ./setup.sh
   ```

3. **Install dependencies**

   ```bash
   # Backend
   cd backend && npm install

   # Frontend
   cd ../frontend && npm install

   # Admin
   cd ../admin && npm install
   ```

4. **Start the servers**

   ```bash
   # Terminal 1 - Backend
   cd backend && npm run server

   # Terminal 2 - Frontend
   cd frontend && npm run dev

   # Terminal 3 - Admin
   cd admin && npm run dev
   ```

## 🌐 Access Points

- **Frontend**: http://localhost:5173
- **Admin Panel**: http://localhost:5174
- **Backend API**: http://localhost:4000

## 🔐 Default Admin Credentials

- **Email**: admin@example.com
- **Password**: admin123

## 📝 Environment Variables

### Backend (.env)

```
MONGODB_URI=your_mongodb_connection_string
JWT_SECRET=your_jwt_secret
ADMIN_EMAIL=admin@example.com
ADMIN_PASSWORD=admin123
CLOUDINARY_NAME=your_cloudinary_name
CLOUDINARY_API_KEY=your_cloudinary_api_key
CLOUDINARY_SECRET_KEY=your_cloudinary_secret
```

### Frontend/Admin (.env)

```
VITE_BACKEND_URL=http://localhost:4000
```

## 🎯 Key Features

### For Patients

- Browse available doctors by specialization
- Book appointments with preferred doctors
- View and manage existing appointments
- Cancel appointments if needed

### For Admins

- Add new doctors with complete profiles
- Manage doctor availability
- View all appointments
- Monitor system statistics

### For Doctors

- View assigned appointments
- Manage availability status
- Update profile information

## 🔧 API Endpoints

### Authentication

- `POST /api/user/register` - User registration
- `POST /api/user/login` - User login
- `POST /api/admin/login` - Admin login

### Doctors

- `GET /api/doctor/all-doctors` - Get all doctors
- `POST /api/doctor/add-doctor` - Add new doctor (admin only)
- `PUT /api/doctor/update-doctor` - Update doctor info

### Appointments

- `POST /api/user/book-appointment` - Book appointment
- `GET /api/user/appointments` - Get user appointments
- `DELETE /api/user/cancel-appointment` - Cancel appointment

## 🚀 Deployment

### Backend Deployment

- Deploy to platforms like Render, Railway, or Heroku
- Set environment variables in deployment platform
- Ensure MongoDB Atlas network access is configured

### Frontend Deployment

- Build the project: `npm run build`
- Deploy to Vercel, Netlify, or similar platforms
- Update `VITE_BACKEND_URL` for production

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

This project is licensed under the MIT License.

## 👨‍💻 Author

Your Name - [Your GitHub](https://github.com/yourusername)

---

**Note**: Make sure to update the environment variables with your own credentials before running the project.
