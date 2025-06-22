import 'package:flutter/material.dart';

class PrivacyPermissionsScreen extends StatelessWidget {
  const PrivacyPermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Privacy & Permissions',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: const [
                  _PrivacyCard(
                    icon: Icons.privacy_tip,
                    iconColor: Color(0xFFEC4899),
                    title: 'Your Data, Your Control',
                    description:
                    'We collect minimal data necessary to provide personalized insights. Your health and wellness data is processed securely on your device whenever possible, and we do not sell or share your personal information with third parties without your explicit consent.',
                  ),
                  _PrivacyCard(
                    icon: Icons.assignment_turned_in,
                    iconColor: Color(0xFFEC4899),
                    title: 'Permissions Required',
                    description:
                    'BalanceBuddy requires permissions to access relevant data like physical activity (steps, duration) from health kits. We will always ask for your permission before accessing this data and explain why it\'s needed.',
                  ),
                  _PrivacyCard(
                    icon: Icons.security,
                    iconColor: Color(0xFFEC4899),
                    title: 'Data Security Measures',
                    description:
                    'We employ industry-standard security practices to protect your data. All transmitted data is encrypted, and we regularly review our security protocols to ensure the highest level of protection.',
                  ),
                  _PrivacyCard(
                    icon: Icons.settings,
                    iconColor: Color(0xFFEC4899),
                    title: 'Managing Your Preferences',
                    description:
                    'You can review and manage the permissions you\'ve granted at any time in the app settings. You also have the option to export or delete your data permanently.',
                  ),
                  _PrivacyCard(
                    icon: Icons.shield_outlined,
                    iconColor: Color(0xFFEC4899),
                    title: 'How We Use Your Data',
                    description:
                    'The data you provide helps us analyze your patterns, generate personalized recommendations, and track your progress towards your wellness goals. Your data is used solely to enhance your experience within the app.',
                  ),
                  _PrivacyCard(
                    icon: Icons.sync_alt,
                    iconColor: Color(0xFFEC4899),
                    title: 'Third-Party Integrations',
                    description:
                    'BalanceBuddy may integrate with third-party health services (e.g., Google Fit, Apple Health) for seamless data synchronization. We ensure these integrations comply with strict privacy standards.',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 18),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEC4899),
                  minimumSize: Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/mood_selection');
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Center(
                child: Text(
                  'Made by BalanceBuddy',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PrivacyCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;

  const _PrivacyCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor, size: 32),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(
                fontSize: 13.5,
                color: Colors.grey[700],
                height: 1.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}