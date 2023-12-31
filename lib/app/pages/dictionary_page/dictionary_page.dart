import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';
import 'package:translator/translator.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

final controller = TextEditingController();

class _DictionaryPageState extends State<DictionaryPage> {
  String translated = '';
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    controller.addListener(() => setState(() {}));
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                  style: GoogleFonts.bebasNeue(
                      color: Colors.white, fontSize: screenWidth / 12),
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
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    labelText: 'Szukaj',
                    hintText: 'Wpisz słowo, którego szukasz',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: controller.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                            onPressed: () => controller.clear(),
                            icon: const Icon(Icons.close)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onChanged: (controller) async {
                    final translation = await controller.translate(
                      from: 'pl',
                      to: 'es',
                    );
                    setState(() {
                      translated = translation.text;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                translated,
                style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFc60b1e)),
              )
            ],
          ),
        ),
        endDrawer: const NavigationDrawerWidget(),
      ),
    );
  }
}
