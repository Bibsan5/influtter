import 'package:flutter/material.dart';
import 'HomePage.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 123, 247, 109),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/results.png',
              height: 60,
              width: 60,
            ),
            Text(
              "Our Results",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: const InputDecoration(
                hintText: "Username",
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
