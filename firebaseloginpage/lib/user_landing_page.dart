import 'package:flutter/material.dart';

class UserLandingPage extends StatelessWidget {
  final String username; // Pass the username for personalization

  const UserLandingPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $username!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Log out and return to login page
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
