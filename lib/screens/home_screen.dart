import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String status;
  final String email;
  final String pass;
  const HomeScreen({super.key, required this.status, required this.email, required this.pass});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(" Status : $status"),
            Text(" Email : $email"),
            Text(" password : $pass"),

          ],
        ),
      ),
    );
  }
}
