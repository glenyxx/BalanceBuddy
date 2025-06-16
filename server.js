require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');

// Import routes (all from ./src/routes/)
const authRoutes = require('./src/routes/auth');
const moodRoutes = require('./src/routes/mood');
const activityRoutes = require('./src/routes/activity');
const userRoutes = require('./src/routes/user');
const digitalTwinRoutes = require('./src/routes/digitaltwin');
const recommendationRoutes = require('./src/routes/recommendation');
const notificationRoutes = require('./src/routes/notification');

const app = express();

app.use(cors());
app.use(express.json());

// Routes
app.use('/api/auth', authRoutes);
app.use('/api/mood', moodRoutes);
app.use('/api/activity', activityRoutes);
app.use('/api/user', userRoutes);
app.use('/api/digitaltwin', digitalTwinRoutes);
app.use('/api/recommendations', recommendationRoutes);
app.use('/api/notifications', notificationRoutes);

// Example of a protected route
const authMiddleware = require('./src/middleware/auth');
app.get('/api/protected', authMiddleware, (req, res) => {
  res.json({ message: `Hello, ${req.user.email}! This is a protected route.` });
});

// Health check route
app.get('/', (req, res) => {
  res.json({ status: 'BalanceBuddy backend running!' });
});

// Connect to MongoDB and start server
mongoose.connect(process.env.MONGO_URI, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => {
    app.listen(process.env.PORT, () => {
      console.log(`Server running on port ${process.env.PORT}`);
    });
  })
  .catch(err => {
    console.error('MongoDB connection failed:', err.message);
  });