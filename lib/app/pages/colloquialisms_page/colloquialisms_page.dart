import 'package:flutter/material.dart';

class ColloquialismsPage extends StatefulWidget {
  const ColloquialismsPage({super.key});

  @override
  State<ColloquialismsPage> createState() => _ColloquialismsPageState();
}

class _ColloquialismsPageState extends State<ColloquialismsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kolokwializmy'),
        centerTitle: true,
        leading: Transform.scale(
          scale: 1.6,
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/flag/flag.png',
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xFFc60b1e)),
                bottom: BorderSide(color: Color(0xFFc60b1e)),
              ),
            ),
            child: const Center(
                child: Text(
                    'Tutaj nauczysz się jak kolokwialnie wyrażać emocje !')),
          ),
        ),
      ),
      body: const Center(
        child: Text('Colloquialisms Page'),
      ),
    );
  }
}
