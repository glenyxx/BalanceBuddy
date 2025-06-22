import 'package:flutter/material.dart';

class ExportDataScreen extends StatelessWidget {
  const ExportDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'Export My Data',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 18),
              Icon(Icons.cloud_download, size: 64, color: Colors.pink[300]),
              const SizedBox(height: 28),
              const Text(
                "Export your BalanceBuddy data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFEC4899),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Text(
                "You can export your mood, activity, and wellness data as a .CSV file for your records or use in other apps. Your data will never be shared without your permission.",
                style: TextStyle(
                  fontSize: 15.5,
                  color: Colors.black87,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                icon: const Icon(Icons.download_rounded, color: Colors.white),
                label: const Text(
                  "Export Data (.CSV)",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEC4899),
                  minimumSize: const Size.fromHeight(52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  // TODO: Implement data export logic (show loader & confirmation)
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Export Complete"),
                      content: const Text("Your data has been exported and sent to your email address."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK", style: TextStyle(color: Color(0xFFEC4899))),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 32),
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
            ],
          ),
        ),
      ),
    );
  }
}