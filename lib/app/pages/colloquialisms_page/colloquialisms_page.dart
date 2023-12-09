import 'package:flutter/material.dart';

class ColloquialismsPage extends StatefulWidget {
  const ColloquialismsPage({super.key});

  @override
  State<ColloquialismsPage> createState() => _ColloquialismsPageState();
}

class _ColloquialismsPageState extends State<ColloquialismsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Colloquialisms Page'),
      ),
    );
  }
}
