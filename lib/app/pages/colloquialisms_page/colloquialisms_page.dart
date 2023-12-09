import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/drawer/drawer.dart';

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
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFc60b1e),
            ),
            child: Column(children: [
              Text(
                'Kolokwializmy',
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 25),
              ),
              Text(
                'Tutaj nauczysz się jak kolokwialnie wyrażać emocje !',
                style: GoogleFonts.lora(color: Colors.white),
              ),
            ]),
          ),
        ),
      ),
      body: const Center(
        child: Text('Colloquialisms Page'),
      ),
      endDrawer: NavigationDrawerWidget(),
    );
  }
}
