import 'package:balance_buddy/screens/onboarding/main_dashboard_screen.dart';
import 'package:flutter/material.dart';

// Import all screens (add your actual file imports as required)
import 'screens/onboarding/login_screen.dart';
import 'screens/onboarding/register_screen.dart';
import 'screens/onboarding/forgot_password_screen.dart';
import 'screens/onboarding/onboarding_complete_screen.dart';
import 'screens/onboarding/digital_twin_screen.dart';
import 'screens/onboarding/mood_selection_screen.dart';
import 'screens/onboarding/settings_screen.dart';
import 'screens/onboarding/profile_screen.dart';
import 'screens/onboarding/about_screen.dart';
import 'screens/onboarding/privacy_policy_screen.dart';
import 'screens/onboarding/privacy_permission_screen.dart';
import 'screens/onboarding/notifications_screen.dart';
import 'screens/onboarding/recommendation_screen.dart';
import 'screens/onboarding/export_data_screen.dart';
import 'screens/onboarding/delete_data_screen.dart'; // Add this screen (see below)
import 'screens/onboarding/mood_tracker_screen.dart'; // Add this screen (see below)
import 'screens/onboarding/features_screen.dart';
import 'screens/onboarding/welcome_screen.dart';

void main() {
  runApp(const BalanceBuddyApp());
}

class BalanceBuddyApp extends StatelessWidget {
  const BalanceBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BalanceBuddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFEC4899),
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFFDF2F8),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFEC4899),
          secondary: Colors.pink[100],
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),                // Welcome Screen (Mental Health Matters)
        '/login': (context) => const LoginScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/onboarding_complete': (context) => const OnboardingCompleteScreen(),
        '/register': (context) => const RegisterScreen(),
        '/main_dashboard': (context) => const MainDashboard(),                      // Home with navigation tabs
        '/mood_selection': (context) => const MoodSelectionScreen(),
        '/mood_tracker': (context) => const MoodTrackerScreen(),
        '/digital_twin': (context) => const DigitalTwinScreen(),       // Insights
        '/recommendations': (context) => const RecommendationsScreen(),// Suggestions
        '/profile': (context) => const ProfileScreen(),                // User Profile + Achievements
        '/settings': (context) => const SettingsScreen(),
        '/export_data': (context) => const ExportDataScreen(),         // Export Data'// App Settings/Logout/Delete
        '/delete_data': (context) => const DeleteDataScreen(),         // Delete Data
        '/notifications': (context) => const NotificationsScreen(),    // Notifications
        '/privacy_permissions': (context) => const PrivacyPermissionsScreen(), // Privacy & Permissions
        '/features': (context) => const FeaturesScreen(),              // Features Overview// Steps, Calories, etc.// Daily Reflections// FAQs & Support
        '/about': (context) => const AboutScreen(),
        '/privacy_policy': (context) => const PrivacyPolicyScreen(),    // Privacy Policy'// About App
      },
    );
  }
}