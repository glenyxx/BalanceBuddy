import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'My Profile',
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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 54,
                    backgroundImage: AssetImage('assets/images/avatar.png'), // Your avatar image
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        // TODO: Change avatar photo logic
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink[200],
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: const Icon(Icons.edit, size: 22, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Center(
              child: Text(
                "Glenys", // Replace with user's name variable
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.pink[400],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                "glenys@email.com", // Replace with user's email variable
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 15.5,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Divider(thickness: 1.2),
            const SizedBox(height: 18),
            // Editable fields
            _ProfileField(
              icon: Icons.person_outline,
              label: "Name",
              value: "Glenys", // Replace with user's name variable
              onTap: () {
                // TODO: Edit name logic
              },
            ),
            _ProfileField(
              icon: Icons.email_outlined,
              label: "Email",
              value: "glenys@email.com", // Replace with user's email variable
              onTap: () {
                // TODO: Edit email logic
              },
            ),
            _ProfileField(
              icon: Icons.cake_outlined,
              label: "Birthday",
              value: "Jan 15, 2006", // Replace with user's birthday variable
              onTap: () {
                // TODO: Edit birthday logic
              },
            ),
            _ProfileField(
              icon: Icons.wc_outlined,
              label: "Gender",
              value: "Prefer not to say", // Replace with user's gender variable
              onTap: () {
                // TODO: Edit gender logic
              },
            ),
            _ProfileField(
              icon: Icons.flag_outlined,
              label: "Country",
              value: "Cameroon", // Replace with user's country variable
              onTap: () {
                // TODO: Edit country logic
              },
            ),
            const SizedBox(height: 28),
            ElevatedButton.icon(
              icon: const Icon(Icons.save, color: Colors.white),
              label: const Text(
                "Save Changes",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEC4899),
                minimumSize: const Size.fromHeight(54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 0,
              ),
              onPressed: () {
                // TODO: Save changes logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Profile changes saved!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
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

class _ProfileField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final VoidCallback onTap;

  const _ProfileField({
    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFFEC4899)),
      title: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15.5),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(fontSize: 15, color: Colors.black87),
      ),
      trailing: const Icon(Icons.edit, color: Colors.black26, size: 20),
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