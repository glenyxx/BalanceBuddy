import 'package:flutter/material.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'BalanceBuddy Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(24),
          children: [
            const Text(
              "Welcome to BalanceBuddy!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFEC4899),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 36),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/features'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Features'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/mood selection'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Select Mood'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/mood_tracker'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Mood Tracker'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/digital_twin'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Digital Twin'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/settings'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Go to Settings'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/recommendation'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Recommendations'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Go to Profile'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/notifications'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Go to Notifications'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/export_data'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Export My Data'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/delete_data'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Delete My Data'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/about'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('About BalanceBuddy'),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}