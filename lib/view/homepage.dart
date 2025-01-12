import 'package:flutter/material.dart';

import '../controller/auth_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Log out the user
            AuthController.instance.signOut();
          },
          child: const Text("Log Out"),
        ),
      ),
    );
  }
}
