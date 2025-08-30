import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'client_home.dart';
import 'admin_home.dart';
import '../services/api_service.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var role = await ApiService.login(emailController.text, passwordController.text);
                if (role == "admin") {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => AdminHome()));
                } else if (role == "client") {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ClientHome()));
                }
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterScreen()));
              },
              child: Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
