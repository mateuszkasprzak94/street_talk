import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffebf00),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Mów jak native',
                  style: GoogleFonts.bebasNeue(
                      letterSpacing: 1, fontSize: 40, color: Colors.white),
                ),
                Text(
                  'wyrażenia, które ułatwią Ci codzienną komunikację',
                  style: GoogleFonts.lora(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/assets_homepage/homepage.jpg'),
              fit: BoxFit.fitHeight),
        ),
      ),
      endDrawer: const Drawer(),
    );
  }
}
