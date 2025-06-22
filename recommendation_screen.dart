import 'package:flutter/material.dart';

class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'Recommendations',
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
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          children: [
            // Recommendation of the Day Card
            Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
                child: Row(
                  children: [
                    Icon(Icons.lightbulb_outline, color: Colors.pink[300], size: 30),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Recommendation of the Day',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Focus on gratitude today. Take a moment to list three things you are thankful for.',
                            style: TextStyle(
                              fontSize: 13.5,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEC4899),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        elevation: 0,
                        minimumSize: Size(65, 38),
                      ),
                      onPressed: () {
                        // TODO: Action for Try This Now
                      },
                      child: const Text(
                        'Try This Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Category Chips
            const Text(
              'Explore Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _CategoryChip(label: 'All Topics', selected: true),
                  _CategoryChip(label: 'Mindfulness'),
                  _CategoryChip(label: 'Journaling'),
                  _CategoryChip(label: 'Stress'),
                  _CategoryChip(label: 'Movement'),
                  _CategoryChip(label: 'Sleep'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Recommended Activities Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recommended Activities',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFFEC4899),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Activities Grid
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                _ActivityCard(
                  icon: Icons.self_improvement,
                  label: 'Yoga Flow',
                  description: 'Gentle movements for relaxation.',
                  actionLabel: 'Begin',
                ),
                _ActivityCard(
                  icon: Icons.park_rounded,
                  label: 'Nature Walk',
                  description: 'Connect with the outdoors.',
                  actionLabel: 'Learn More',
                ),
                _ActivityCard(
                  icon: Icons.music_note_rounded,
                  label: 'Listening to Music',
                  description: 'Therapeutic sounds.',
                  actionLabel: 'Discover',
                ),
                _ActivityCard(
                  icon: Icons.accessibility_new_rounded,
                  label: 'Gentle Stretching',
                  description: 'Ease tension in your body.',
                  actionLabel: 'Start',
                ),
                _ActivityCard(
                  icon: Icons.sentiment_satisfied_alt,
                  label: 'Positive Affirmations',
                  description: 'Boost your self-esteem.',
                  actionLabel: 'Read More',
                ),
              ],
            ),
            const SizedBox(height: 25),
            // Quick Tips for Well-being
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Quick Tips for Well-being',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFFEC4899),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const _TipRow(label: 'Stay Hydrated', value: 'Daily Goal', icon: Icons.water_drop),
            const _TipRow(label: 'Take Short Breaks', value: 'Every Hour', icon: Icons.timer),
            const _TipRow(label: 'Limit Screen Time', value: 'Evening', icon: Icons.phone_android_rounded),
            const _TipRow(label: 'Deep Breathing', value: '2 min', icon: Icons.air_rounded),
            const _TipRow(label: 'Limit Caffeine Afternoons', value: 'After 2 PM', icon: Icons.coffee),
            const SizedBox(height: 22),
            // Discover More
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Discover More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFFEC4899),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: _DiscoverCard(
                    imageAsset: 'assets/images/mindful_eating.png',
                    label: 'Mindful Eating Guide',
                    description: 'Learn to savor your meals.',
                    actionLabel: 'Read Guide',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _DiscoverCard(
                    imageAsset: 'assets/images/sleep_tips.png',
                    label: 'Sleep Improvement Tips',
                    description: 'Strategies for better rest.',
                    actionLabel: 'Improve Sleep',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            _MainNavBar(selectedIndex: 2),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;

  const _CategoryChip({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : Colors.pink[400],
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: selected ? const Color(0xFFEC4899) : Colors.pink[50],
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      ),
    );
  }
}

class _ActivityCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String description;
  final String actionLabel;

  const _ActivityCard({
    required this.icon,
    required this.label,
    required this.description,
    required this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, color: Color(0xFFEC4899), size: 32),
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 12.5,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEC4899),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(80, 34),
                elevation: 0,
              ),
              onPressed: () {
                // TODO: Action for activity
              },
              child: Text(
                actionLabel,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TipRow extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _TipRow({required this.label, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFEC4899), size: 22),
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class _DiscoverCard extends StatelessWidget {
  final String imageAsset;
  final String label;
  final String description;
  final String actionLabel;

  const _DiscoverCard({
    required this.imageAsset,
    required this.label,
    required this.description,
    required this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              imageAsset,
              height: 60,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 11.5,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 6),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEC4899),
                    minimumSize: const Size(30, 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    // TODO: action for guide
                  },
                  child: Text(
                    actionLabel,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
              Navigator.pushNamed(context, '/mood_tracker');
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
              // Current screen
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