import 'package:flutter/material.dart';

class DeleteDataScreen extends StatefulWidget {
  const DeleteDataScreen({super.key});

  @override
  State<DeleteDataScreen> createState() => _DeleteDataScreenState();
}

class _DeleteDataScreenState extends State<DeleteDataScreen> {
  bool confirm = false;
  bool deleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF2F8),
        elevation: 0,
        title: const Text(
          'Delete My Data',
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
              Icon(Icons.delete_forever, size: 64, color: Colors.pink[300]),
              const SizedBox(height: 28),
              const Text(
                "Delete your BalanceBuddy data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFEC4899),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Text(
                "This action will permanently delete all your mood, activity, and wellness data from BalanceBuddy. This cannot be undone.",
                style: TextStyle(
                  fontSize: 15.5,
                  color: Colors.black87,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 34),
              if (!deleted)
                Column(
                  children: [
                    CheckboxListTile(
                      value: confirm,
                      onChanged: (val) => setState(() => confirm = val ?? false),
                      activeColor: const Color(0xFFEC4899),
                      title: const Text(
                        "I understand this action is permanent.",
                        style: TextStyle(
                          fontSize: 15.2,
                          color: Colors.black87,
                        ),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: const EdgeInsets.all(0),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.delete, color: Colors.white),
                      label: const Text(
                        "Delete My Data",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: confirm
                            ? const Color(0xFFEC4899)
                            : Colors.pink[100],
                        minimumSize: const Size.fromHeight(52),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 0,
                      ),
                      onPressed: confirm
                          ? () {
                        setState(() => deleted = true);
                        // TODO: Implement deletion logic
                      }
                          : null,
                    ),
                  ],
                ),
              if (deleted) ...[
                const SizedBox(height: 16),
                const Icon(Icons.mark_email_read_outlined, size: 46, color: Color(0xFFEC4899)),
                const SizedBox(height: 18),
                const Text(
                  "Your data has been deleted.",
                  style: TextStyle(
                    color: Color(0xFFEC4899),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                const Text(
                  "We're sad to see you go. You can continue using the app, but your data is no longer stored.",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEC4899),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/main_dashboard', (route) => false);
                  },
                  child: const Text(
                    "Return to Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
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
      ),
    );
  }
}