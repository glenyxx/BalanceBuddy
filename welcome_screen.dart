import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8), // Soft pink background
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            // Logo
            Center(
              child: Image.asset(
                'assets/images/balance_logo.png', // Replace with your logo image
                height: 120,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            // "Mental Health Matters" as an image
            Center(
              child: Image.asset(
                'assets/images/mental_health_matters.png', // Place your Mental Health Matters image here
                height: 60,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            // Welcome Text
            Center(
              child: Text(
                'Welcome to BalanceBuddy',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                  height: 1.1,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                'Prioritize your mental well-being journey.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.pink[400],
                ),
              ),
            ),
            const Spacer(),
            // Get Started Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEC4899),
                  minimumSize: const Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Center(
                child: Text(
                  'Made by BalanceBuddy',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.pink[200],
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