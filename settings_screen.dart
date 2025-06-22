import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'Settings',
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
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          children: [
            const SizedBox(height: 18),
            const _SettingsHeader(title: "Account"),
            _SettingsTile(
              icon: Icons.person_outline,
              label: "Profile",
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            _SettingsTile(
              icon: Icons.lock_outline,
              label: "Change Password",
              onTap: () {
                Navigator.pushNamed(context, '/forgot_password');
              },
            ),
            const SizedBox(height: 18),
            const _SettingsHeader(title: "App"),
            _SettingsTile(
              icon: Icons.notifications_none_rounded,
              label: "Notifications",
              onTap: () {
                Navigator.pushNamed(context, '/notifications');
              },
            ),
            _SettingsTile(
              icon: Icons.privacy_tip_outlined,
              label: "Privacy Policy",
              onTap: () {
                Navigator.pushNamed(context, '/privacy_policy');
              },
            ),
            _SettingsTile(
              icon: Icons.info_outline,
              label: "About BalanceBuddy",
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            const SizedBox(height: 18),
            const _SettingsHeader(title: "Data"),
            _SettingsTile(
              icon: Icons.cloud_download_outlined,
              label: "Export Data",
              onTap: () {
                Navigator.pushNamed(context, '/export_data');
              },
            ),
            _SettingsTile(
              icon: Icons.delete_forever_outlined,
              label: "Delete My Data",
              onTap: () {
                Navigator.pushNamed(context, '/delete_data');
              },
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.logout, color: Colors.white),
                label: const Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEC4899),
                  minimumSize: const Size(170, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                },
              ),
            ),
            const SizedBox(height: 38),
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

class _SettingsHeader extends StatelessWidget {
  final String title;

  const _SettingsHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 3),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.pink[400],
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SettingsTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFFEC4899)),
      title: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.black26, size: 19),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      dense: true,
      minLeadingWidth: 30,
    );
  }
}