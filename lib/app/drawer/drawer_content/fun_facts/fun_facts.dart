import 'package:flutter/material.dart';

class FunFactsPage extends StatefulWidget {
  const FunFactsPage({super.key});

  @override
  State<FunFactsPage> createState() => _FunFactsPageState();
}

class _FunFactsPageState extends State<FunFactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ciekawostki'),
      ),
    );
  }
}
