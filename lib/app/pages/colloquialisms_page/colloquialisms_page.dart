import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/widgets/buttons/colloquialisms_page_button.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';

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
      body: ListView(
        children: [
          ColloquialismsButtonWidget(
            image: Image.asset('assets/images/bull.jpg'),
            polishTitle: 'Jak wyrazić emocje',
            spanishTitle: 'Cómo expresar emociones',
          ),
          ColloquialismsButtonWidget(
            image: Image.asset('assets/images/street.jpg'),
            polishTitle: 'Hiszpański prosto z ulicy',
            spanishTitle: 'Español directo de la calle.',
          ),
          ColloquialismsButtonWidget(
            image: Image.asset('assets/images/situation.jpg'),
            polishTitle: 'Na konkretną sytuacje',
            spanishTitle: 'Para una situación específica',
          ),
          ColloquialismsButtonWidget(
            image: Image.asset('assets/images/goodbye.jpg'),
            polishTitle: 'Przywitania i pożegnania',
            spanishTitle: 'Saludos y despedidas',
          ),
        ],
      ),
      endDrawer: const NavigationDrawerWidget(),
    );
  }
}
