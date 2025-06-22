import 'package:flutter/material.dart';

class MoodTrackerScreen extends StatelessWidget {
  const MoodTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'Mood and Activity Tracker',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Color(0xFFEC4899)),
            onPressed: () {
              // TODO: Go to notifications screen
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'), // replace with your avatar image
              radius: 18,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          children: [
            // Mood selection
            const Text(
              'How are you feeling today?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _MoodChip(label: 'Great', color: Color(0xFF4ADE80)),
                _MoodChip(label: 'Good', color: Color(0xFFA7F3D0)),
                _MoodChip(label: 'Okay', color: Color(0xFFFCD34D)),
                _MoodChip(label: 'Bad', color: Color(0xFFFCA5A5)),
                _MoodChip(label: 'Terrible', color: Color(0xFFEF4444)),
              ],
            ),
            const SizedBox(height: 16),
            // Activity notes
            TextField(
              decoration: InputDecoration(
                hintText: 'E.g., Went for a walk, read a book...',
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 20),
            // Today's Summary
            Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Today's Summary",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFEC4899),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _SummaryItem(
                          icon: Icons.directions_walk,
                          value: '7,500',
                          label: 'Steps',
                          iconColor: Color(0xFF4ADE80),
                        ),
                        _SummaryItem(
                          icon: Icons.local_fire_department,
                          value: '550',
                          label: 'kcal',
                          iconColor: Color(0xFFFCA5A5),
                        ),
                        _SummaryItem(
                          icon: Icons.timer,
                          value: '90',
                          label: 'min',
                          iconColor: Color(0xFF6366F1),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Overall Well-being Score: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          '78%',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFEC4899),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            // Weekly Activity Trends
            Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Weekly Activity Trends',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFEC4899),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Graph should be here
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/graph_placeholder.png', // Replace with your graph image or use a chart package
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Data based on your mood and activity inputs.',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Bottom nav bar placeholder
            _MainNavBar(selectedIndex: 0),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class _MoodChip extends StatelessWidget {
  final String label;
  final Color color;

  const _MoodChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          )),
      backgroundColor: color.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color iconColor;

  const _SummaryItem({
    required this.icon,
    required this.value,
    required this.label,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 28),
        const SizedBox(height: 3),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.5,
            color: Colors.black,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
      ],
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
              Navigator.pushNamed(context, '/mood_tracker');// Current
            },
          ),
          _NavBarItem(
            icon: Icons.account_tree_rounded,
            label: "Digital Twin",
            selected: selectedIndex == 1,
            onTap: () {
              Navigator.pushNamed(context, '/digital_twin');
            },
          ),
          _NavBarItem(
            icon: Icons.tips_and_updates_rounded,
            label: "Recommendations",
            selected: selectedIndex == 2,
            onTap: () {
              Navigator.pushNamed(context, '/recommendations');
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