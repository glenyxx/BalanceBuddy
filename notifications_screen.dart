import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          children: [
            const SizedBox(height: 10),
            const _NotificationItem(
              icon: Icons.emoji_events,
              title: "You reached a new step goal!",
              subtitle: "Great work! Keep up the healthy habits.",
              timestamp: "1h ago",
              iconColor: Color(0xFF4ADE80),
            ),
            const _NotificationItem(
              icon: Icons.tips_and_updates,
              title: "Today's tip: Practice deep breathing",
              subtitle: "Take 2 minutes for mindful breathing.",
              timestamp: "3h ago",
              iconColor: Color(0xFFEC4899),
            ),
            const _NotificationItem(
              icon: Icons.check_circle_outline,
              title: "Streak: 5 days tracked",
              subtitle: "You're building consistency!",
              timestamp: "Yesterday",
              iconColor: Color(0xFF6366F1),
            ),
            const _NotificationItem(
              icon: Icons.star_border,
              title: "New Recommendation Available",
              subtitle: "Explore wellness activities tailored for you.",
              timestamp: "2 days ago",
              iconColor: Color(0xFFFCD34D),
            ),
            const _NotificationItem(
              icon: Icons.security,
              title: "Privacy Update",
              subtitle: "We have updated our privacy policy.",
              timestamp: "5 days ago",
              iconColor: Color(0xFFEF4444),
            ),
            const SizedBox(height: 28),
            const Center(
              child: Text(
                'Made by BalanceBuddy',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NotificationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String timestamp;
  final Color iconColor;

  const _NotificationItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.timestamp,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconColor.withOpacity(0.18),
          child: Icon(icon, color: iconColor, size: 26),
          radius: 24,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.5,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 13.5,
          ),
        ),
        trailing: Text(
          timestamp,
          style: const TextStyle(
            color: Colors.black38,
            fontSize: 12,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        dense: false,
        minLeadingWidth: 48,
      ),
    );
  }
}