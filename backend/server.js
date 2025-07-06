import express from "express";
import cors from "cors";
import "dotenv/config";
import connectDB from "./config/mongodb.js";
import connectCloudinary from "./config/cloudinary.js";
import adminRouter from "./routes/adminRoute.js";
import doctorRouter from "./routes/doctorRoute.js";
import userRouter from "./routes/userRoute.js";

// app config
const app = express();
const port = process.env.PORT || 4000;
connectDB();
connectCloudinary();

// CORS configuration
const corsOptions = {
  origin: [
    "http://localhost:5173", // Frontend dev
    "http://localhost:5174", // Admin dev
    "https://*.vercel.app", // Vercel domains
    "https://*.onrender.com", // Render domains
  ],
  credentials: true,
};

// middlewares
app.use(express.json());
app.use(cors(corsOptions));

// api end point
app.use("/api/admin", adminRouter);
app.use("/api/doctor", doctorRouter);
app.use("/api/user", userRouter);

app.get("/", (req, res) => {
  res.send("Doctor Appointment API is working...");
});

app.listen(port, () => console.log("Server started on port", port));
