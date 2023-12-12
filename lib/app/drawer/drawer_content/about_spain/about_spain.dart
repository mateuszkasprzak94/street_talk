import 'package:flutter/material.dart';

class AboutSpainPage extends StatefulWidget {
  const AboutSpainPage({super.key});

  @override
  State<AboutSpainPage> createState() => _AboutSpainPageState();
}

class _AboutSpainPageState extends State<AboutSpainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('O Hiszpanii'),
      ),
    );
  }
}
