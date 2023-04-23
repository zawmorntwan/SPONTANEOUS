import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Icon(
        Icons.wifi,
        size: 100,
        color: Colors.teal,
      ),
    );
  }
}
