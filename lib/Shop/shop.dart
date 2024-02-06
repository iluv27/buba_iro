import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        height: 300,
        width: 300,
        color: Colors.red,
        child: const Text(
          'Please. I am groot',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
