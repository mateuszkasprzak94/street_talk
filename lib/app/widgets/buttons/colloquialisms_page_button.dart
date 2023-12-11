import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColloquialismsButtonWidget extends StatelessWidget {
  const ColloquialismsButtonWidget({
    required this.image,
    required this.polishTitle,
    required this.spanishTitle,
    super.key,
  });

  final Image image;
  final String polishTitle;
  final String spanishTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20) +
          const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 90,
                width: 90,
                child: image,
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                polishTitle,
                style: GoogleFonts.lora(fontSize: 25),
              ),
              Text(
                spanishTitle,
                style: GoogleFonts.lora(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward_ios),
          ),
        )
      ]),
    );
  }
}
