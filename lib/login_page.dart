import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.orange[900],
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 30, top: 100, bottom: 50),
                  child: const Text(
                    "Welcome! Let's get you Logged in",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 70),
                      emailField(),
                      const SizedBox(height: 20),
                      passwordField(),
                      const SizedBox(height: 20),
                      const Text("Don't have an account? SignUp"),
                      const SizedBox(height: 20),
                      SubmitButton(),
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

  Widget passwordField() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget emailField() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Email",
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget SubmitButton() {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text("Submit"),
      ),
    );
  }
}
