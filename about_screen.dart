import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'About BalanceBuddy',
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
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
          children: [
            Center(
              child: Image.asset(
                'assets/images/balance_logo.png',
                height: 90,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 18),
            const Center(
              child: Text(
                "BalanceBuddy",
                style: TextStyle(
                  color: Color(0xFFEC4899),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Your Wellness Companion",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 26),
            const Text(
              "What is BalanceBuddy?",
              style: TextStyle(
                color: Color(0xFFEC4899),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "BalanceBuddy helps you track your mood, activity, and wellness patterns. With a privacy-first approach, it empowers you to take charge of your mental and physical well-being in a friendly, supportive way.",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.5,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 22),
            const Text(
              "Features:",
              style: TextStyle(
                color: Color(0xFFEC4899),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 8),
            const _Bullet(text: "Mood and activity tracking"),
            const _Bullet(text: "Personalized recommendations"),
            const _Bullet(text: "Data privacy and security"),
            const _Bullet(text: "Insights into your wellness patterns"),
            const _Bullet(text: "Customizable notifications"),
            const SizedBox(height: 26),
            const Text(
              "Our Mission",
              style: TextStyle(
                color: Color(0xFFEC4899),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "To make self-care accessible, actionable, and private for everyone.",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.5,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 22),
            const Divider(thickness: 1),
            const SizedBox(height: 16),
            Center(
              child: Text(
                'Version 1.0.0',
                style: TextStyle(
                  color: Colors.pink[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 9),
            const Center(
              child: Text(
                'Made by BalanceBuddy',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class _Bullet extends StatelessWidget {
  final String text;

  const _Bullet({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 16, color: Color(0xFFEC4899))),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15.5, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}