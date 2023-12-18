import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EmotionCardContentWidget extends StatelessWidget {
  const EmotionCardContentWidget({
    required this.title,
    required this.titleTranslation,
    required this.exampleOne,
    required this.exampleTwo,
    required this.exampleColor,
    super.key,
  });

  final String title, titleTranslation, exampleOne, exampleTwo;
  final Color exampleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(
              FontAwesomeIcons.mapPin,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 35,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xFFc60b1e),
            indent: 70,
            endIndent: 70,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            child: Expanded(
              child: Text(
                titleTranslation,
                style: GoogleFonts.notoSans(
                  color: Colors.grey.shade500,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xFFc60b1e),
            indent: 70,
            endIndent: 70,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: exampleColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  'EJEMPLO',
                  style: GoogleFonts.merriweather(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.black),
                ),
                const SizedBox(height: 9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exampleOne,
                      style: GoogleFonts.lora(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      exampleTwo,
                      style: GoogleFonts.lora(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
