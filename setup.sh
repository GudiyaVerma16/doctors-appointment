#!/bin/bash

echo "🏥 Setting up Doctor Appointment Management System..."
echo "=================================================="

# Create backend .env
echo "📁 Creating backend/.env..."
cat > backend/.env << EOF
# MongoDB Atlas Connection String
MONGODB_URI=mongodb+srv://sourabh:root@cluster0.rfcfzhl.mongodb.net/doctor-appointment?retryWrites=true&w=majority

# JWT Secret for authentication
JWT_SECRET=mysecretkey123456789

# Admin credentials
ADMIN_EMAIL=admin@example.com
ADMIN_PASSWORD=admin123

# Cloudinary configuration
CLOUDINARY_NAME=dmomqlnta
CLOUDINARY_API_KEY=873528867351648
CLOUDINARY_SECRET_KEY=a8xVVT9GULsJ3rOCZoFodFS8fb4
EOF

# Create frontend .env
echo "📁 Creating frontend/.env..."
echo "VITE_BACKEND_URL=http://localhost:4000" > frontend/.env

# Create admin .env
echo "📁 Creating admin/.env..."
echo "VITE_BACKEND_URL=http://localhost:4000" > admin/.env

# Update mongodb.js
echo "🔧 Updating backend/config/mongodb.js..."
cat > backend/config/mongodb.js << EOF
import mongoose from "mongoose";

const connectDB = async () => {
  mongoose.connection.on('connected', () => console.log('Database Connected'))
  await mongoose.connect(process.env.MONGODB_URI)
}

export default connectDB
EOF

echo ""
echo "✅ Setup complete!"
echo "=================================================="
echo "🚀 Next steps:"
echo "1. cd backend && npm install && npm run server"
echo "2. cd frontend && npm install && npm run dev" 
echo "3. cd admin && npm install && npm run dev"
echo ""
echo "🌐 Access your app at:"
echo "   Frontend: http://localhost:5173"
echo "   Admin: http://localhost:5174"
echo "   Backend: http://localhost:4000"
echo ""
echo "🔐 Admin Login: admin@example.com / admin123" 