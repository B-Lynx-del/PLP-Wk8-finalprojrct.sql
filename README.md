# PLP-Wk8-finalprojrct.sql
# 🧠 Mental Wellness Tracker – MySQL Database

This project is a relational database schema for a Mental Wellness Tracker platform. It allows users to log moods, write journal entries, track breathing sessions, and save affirmations to support emotional well-being.

## 📌 Use Case

Designed to promote mental health through structured self-reflection and mindfulness tracking. The schema supports features like:

- Daily mood logging
- Personal journaling
- Breathing session tracking
- Affirmation saving and sharing

## 🗂️ Schema Overview

The database includes the following tables:

- `Users`: Registered users of the platform
- `MoodEntries`: Daily mood logs with optional notes
- `JournalEntries`: Freeform reflections with titles and timestamps
- `BreathingSessions`: Logs of guided breathing exercises
- `Affirmations`: Positive statements categorized by theme
- `UserAffirmations`: Many-to-many relationship between users and affirmations

## 🔧 How to Run

1. Open your MySQL client (CLI, phpMyAdmin, MySQL Workbench, etc.)
2. Run the SQL file:
   ```bash
   mysql -u your_username -p < mental_wellness.sql
