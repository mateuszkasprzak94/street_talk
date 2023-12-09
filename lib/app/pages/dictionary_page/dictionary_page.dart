import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/drawer/drawer.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
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
                'Słownik',
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 25),
              ),
              Text(
                'Niby wszystko wiem ale jednak sprawdze :)',
                style: GoogleFonts.lora(color: Colors.white),
              ),
            ]),
          ),
        ),
      ),
      body: Center(
        child: Text('Dictionary Page'),
      ),
      endDrawer: NavigationDrawerWidget(),
    );
  }
}
