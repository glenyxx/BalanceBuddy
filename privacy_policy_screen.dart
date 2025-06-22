import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'Privacy Policy',
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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
          children: [
            const Text(
              'BalanceBuddy Privacy Policy',
              style: TextStyle(
                color: Color(0xFFEC4899),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              "Your privacy is important to us. This policy explains how BalanceBuddy collects, uses, and protects your information:",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.5,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 22),
            const _SectionTitle(title: "What we collect"),
            const _Bullet(text: "Email and basic profile info (for sign-in)"),
            const _Bullet(text: "Mood and activity logs you enter"),
            const _Bullet(text: "App usage analytics (optional and anonymous)"),
            const SizedBox(height: 14),
            const _SectionTitle(title: "How we use your data"),
            const _Bullet(text: "To personalize your experience"),
            const _Bullet(text: "To provide insights and trends"),
            const _Bullet(text: "To improve BalanceBuddy features"),
            const SizedBox(height: 14),
            const _SectionTitle(title: "Your choices & control"),
            const _Bullet(text: "You can export or delete your data anytime"),
            const _Bullet(text: "You control notification preferences"),
            const _Bullet(text: "You can request account deletion"),
            const SizedBox(height: 14),
            const _SectionTitle(title: "How we protect your data"),
            const _Bullet(text: "We use encryption for sensitive data"),
            const _Bullet(text: "Your data is never sold to third parties"),
            const _Bullet(text: "Only you can access your detailed mood/activity logs"),
            const SizedBox(height: 14),
            const _SectionTitle(title: "Questions?"),
            const Text(
              "Contact us at privacy@balancebuddy.app for any privacy or data concerns.",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 36),
            const Divider(thickness: 1),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Made by BalanceBuddy',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFEC4899),
          fontWeight: FontWeight.bold,
          fontSize: 16.5,
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
              style: const TextStyle(fontSize: 15.2, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}