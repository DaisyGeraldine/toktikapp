import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TokTik'),
      ),
      body: const Center(
        child: Text('Hello, world!'),
      ),
    );
  }
}