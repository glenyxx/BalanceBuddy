import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F8),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // App logo
                Center(
                  child: Image.asset(
                    'assets/images/balance_app_logo.png',
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.pink[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Center(
                  child: Text(
                    "Join BalanceBuddy to begin your wellness journey.",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 36),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Name
                      TextFormField(
                        onChanged: (val) => setState(() => name = val),
                        decoration: InputDecoration(
                          labelText: "Name",
                          prefixIcon: const Icon(Icons.person_outline, color: Color(0xFFEC4899)),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (val) =>
                        (val == null || val.isEmpty) ? 'Enter your name' : null,
                      ),
                      const SizedBox(height: 18),
                      // Email
                      TextFormField(
                        onChanged: (val) => setState(() => email = val),
                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFFEC4899)),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) =>
                        (val == null || !val.contains('@')) ? 'Enter a valid email' : null,
                      ),
                      const SizedBox(height: 18),
                      // Password
                      TextFormField(
                        onChanged: (val) => setState(() => password = val),
                        obscureText: isObscured,
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFFEC4899)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isObscured ? Icons.visibility_off : Icons.visibility,
                              color: Colors.pinkAccent,
                            ),
                            onPressed: () => setState(() => isObscured = !isObscured),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (val) =>
                        (val == null || val.length < 6) ? 'Minimum 6 characters' : null,
                      ),
                      const SizedBox(height: 12),
                      // Register Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEC4899),
                            minimumSize: const Size.fromHeight(54),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            elevation: 0,
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // TODO: Handle registration logic here
                              Navigator.pushNamed(context, '/main_dashboard');
                            }
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Expanded(child: Divider(thickness: 1)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "or",
                              style: TextStyle(color: Colors.black54, fontSize: 13.5),
                            ),
                          ),
                          Expanded(child: Divider(thickness: 1)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Social login buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _SocialIconButton(
                            imageAsset: "assets/images/google_icon.png",
                            onTap: () {
                              // TODO: Google sign-in
                            },
                          ),
                          const SizedBox(width: 16),
                          _SocialIconButton(
                            imageAsset: "assets/images/apple_icon.png",
                            onTap: () {
                              // TODO: Apple sign-in
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 26),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.black87, fontSize: 14),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Color(0xFFEC4899),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SocialIconButton extends StatelessWidget {
  final String imageAsset;
  final VoidCallback onTap;

  const _SocialIconButton({required this.imageAsset, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.pink[50]!, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.06),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            imageAsset,
            width: 28,
            height: 28,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}