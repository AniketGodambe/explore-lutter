import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/login_image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text(
              'Welcome',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 0.8),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter User name", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      print("hi");
                    },
                    child: Text('login'),
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 135, 70, 248),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
