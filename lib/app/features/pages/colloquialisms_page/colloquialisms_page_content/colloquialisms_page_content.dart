import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/colloquialisms_page_content/cubit/colloquialisms_page_cubit.dart';

class ColloquialismsPageContent extends StatelessWidget {
  const ColloquialismsPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => ColloquialismsPageCubit()..start(),
      child: BlocBuilder<ColloquialismsPageCubit, ColloquialismsPageState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 30,
                      foregroundImage: AssetImage('assets/images/logo.jpg'),
                    ),
                  )
                ],
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(70),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFc60b1e),
                    ),
                    child: Center(
                      child: Text(
                        'Jak wyrażać emocje',
                        style: GoogleFonts.bebasNeue(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: screenWidth / 12),
                      ),
                    ),
                  ),
                ),
              ),
              body: Column(
                children: [],
              ));
        },
      ),
    );
  }
}

class EmotionsButtonWidget extends StatelessWidget {
  const EmotionsButtonWidget({
    required this.image,
    required this.polishTitle,
    required this.spanishTitle,
    required this.onPressed,
    super.key,
  });

  final Image image;
  final String polishTitle;
  final String spanishTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressed,
      child: Container(
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
                      fontSize: screenWidth / 19,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward_ios),
          )
        ]),
      ),
    );
  }
}
