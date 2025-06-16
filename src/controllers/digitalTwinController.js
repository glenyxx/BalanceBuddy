const DigitalTwinState = require('../models/DigitalTwinState');
const MoodEntry = require('../models/MoodEntry');
const ActivityEntry = require('../models/ActivityEntry');

exports.getDigitalTwin = async (req, res) => {
  try {
    // Calculate mood score based on recent entries
    const moods = await MoodEntry.find({ userId: req.user.userId }).sort({ date: -1 }).limit(7);
    const activities = await ActivityEntry.find({ userId: req.user.userId }).sort({ date: -1 }).limit(7);
    let moodScore = 50;
    let activityLevel = "Medium";
    let sleepGoal = 7;
    let mindfulnessMinutes = 0;
    let summary = "Keep tracking your habits!";
    let tips = [];

    if (moods.length) {
      // Example: each "Happy" or "Excited" increases, "Sad" or "Annoyed" decreases
      let score = 50;
      moods.forEach(m => {
        if (["Happy", "Excited", "Joyful", "Great"].includes(m.mood)) score += 8;
        if (["Okay"].includes(m.mood)) score += 0;
        if (["Sad", "Annoyed", "Bad", "Terrible"].includes(m.mood)) score -= 8;
      });
      moodScore = Math.max(0, Math.min(100, Math.round(score / moods.length)));
    }

    if (activities.length) {
      // Example: high steps = high activity
      const avgSteps = activities.reduce((a, b) => a + (b.steps || 0), 0) / activities.length;
      if (avgSteps > 8000) activityLevel = "High";
      else if (avgSteps > 4000) activityLevel = "Medium";
      else activityLevel = "Low";
    }

    // Example tips
    if (moodScore < 50) tips.push("Try some mindfulness exercises or a short walk.");
    if (activityLevel === "Low") tips.push("Increase your daily movement for a better mood.");

    const twin = {
      moodScore,
      activityLevel,
      sleepGoal,
      mindfulnessMinutes,
      summary,
      tips
    };

    res.json(twin);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};