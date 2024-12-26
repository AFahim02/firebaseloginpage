import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditUserPage extends StatelessWidget {
  final String userId;
  final String username;
  final String password;

  const EditUserPage({
    super.key,
    required this.userId,
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController(text: username);
    final passwordController = TextEditingController(text: password);

    void updateUser() {
      FirebaseFirestore.instance.collection('users').doc(userId).update({
        'username': usernameController.text,
        'password': passwordController.text,
      }).then((_) => Navigator.pop(context));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Edit User')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: updateUser,
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
