import express from "express";
const app = express();

// global middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// routers
import patientRoutes from "./src/routes/patientRoutes.js";
import hospitalRoutes from "./src/routes/hospitalRoutes.js";
import psychiatristRoutes from "./src/routes/psychiatristRoutes.js";
app.use("/api/v1/patient", patientRoutes);
app.use("/api/v1/hospital", hospitalRoutes);
app.use("/api/v1/psychiatrist", psychiatristRoutes);

// port
const PORT = process.env.PORT || 8080;

// server
app.listen(PORT, () => {
  console.log(`Server is running on ${PORT}`);
});
