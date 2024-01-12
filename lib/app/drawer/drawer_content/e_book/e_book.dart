import 'package:flutter/material.dart';

class EBookPage extends StatefulWidget {
  const EBookPage({super.key});

  @override
  State<EBookPage> createState() => _EBookPageState();
}

class _EBookPageState extends State<EBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Booki do nauki'),
      ),
    );
  }
}
