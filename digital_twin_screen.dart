import 'package:flutter/material.dart';

class DigitalTwinScreen extends StatelessWidget {
  const DigitalTwinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'Digital Twin',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'), // Replace with your user/avatar image
              radius: 18,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Top image and status
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/images/digital_twin_bg.png', // Replace with your dashboard background image
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Feeling Balanced",
              style: TextStyle(
                color: Color(0xFF2E2E2E),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            // Grid metrics
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  _DashboardMetricCard(
                    label: "Mood Score",
                    value: "85",
                    subLabel: "+5 pts vs last week",
                  ),
                  const SizedBox(width: 10),
                  _DashboardMetricCard(
                    label: "Activity Level",
                    value: "High",
                    subLabel: "Consistent",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: Row(
                children: [
                  _DashboardMetricCard(
                    label: "Sleep Goal",
                    value: "85%",
                    subLabel: "85hrs / 8hrs",
                    isCircular: true,
                  ),
                  const SizedBox(width: 10),
                  _DashboardMetricCard(
                    label: "Mindfulness Mins",
                    value: "45",
                    subLabel: "+10 mins vs yesterday",
                  ),
                ],
              ),
            ),
            // Review Patterns
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4),
              child: Card(
                color: const Color(0xFFFDF6FA),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Review Your Patterns",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Your recent activity levels suggest a positive trend. Review your daily logs to identify contributing factors.",
                        style: TextStyle(
                          fontSize: 13.5,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE11D48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            minimumSize: const Size(110, 40),
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/mood_tracker');
                          },
                          child: const Text(
                            "View Logs",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Boost Mood
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4),
              child: Card(
                color: const Color(0xFFFDF6FA),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Boost Your Mood",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Consider incorporating a short walk into your afternoon routine based on your recent mood patterns.",
                        style: TextStyle(
                          fontSize: 13.5,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE11D48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            minimumSize: const Size(140, 40),
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/recommendation');
                          },
                          child: const Text(
                            "Suggest Activity",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Bottom nav bar placeholder
            _MainNavBar(selectedIndex: 1),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class _DashboardMetricCard extends StatelessWidget {
  final String label;
  final String value;
  final String subLabel;
  final bool isCircular;

  const _DashboardMetricCard({
    required this.label,
    required this.value,
    required this.subLabel,
    this.isCircular = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          child: Column(
            children: [
              isCircular
                  ? Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator(
                      value: 0.85,
                      backgroundColor: Colors.pink.shade100,
                      color: const Color(0xFFEC4899),
                      strokeWidth: 6,
                    ),
                  ),
                  Text(
                    value,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
                  : Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.pink[400],
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subLabel,
                style: const TextStyle(
                  fontSize: 11.5,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MainNavBar extends StatelessWidget {
  final int selectedIndex;

  const _MainNavBar({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.07),
            blurRadius: 12,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _NavBarItem(
            icon: Icons.show_chart,
            label: "Tracker",
            selected: selectedIndex == 0,
            onTap: () {
              Navigator.pushNamed(context, '/mood_tracker');// TODO: Route to Tracker
            },
          ),
          _NavBarItem(
            icon: Icons.account_tree_rounded,
            label: "Digital Twin",
            selected: selectedIndex == 1,
            onTap: () {
              Navigator.pushNamed(context, '/digital_twin');// Current
            },
          ),
          _NavBarItem(
            icon: Icons.tips_and_updates_rounded,
            label: "Recommendations",
            selected: selectedIndex == 2,
            onTap: () {
              Navigator.pushNamed(context, '/recommendation');//
            },
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _NavBarItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected ? const Color(0xFFEC4899) : Colors.grey[400];
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 28),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              fontSize: 12.5,
            ),
          )
        ],
      ),
    );
  }
}