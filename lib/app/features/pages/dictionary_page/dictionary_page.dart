import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/widgets/animations/animation.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';
import 'package:translator/translator.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

final _controller = TextEditingController();

class _DictionaryPageState extends State<DictionaryPage> {
  String translated = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    _controller.addListener(() => setState(() {}));
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: kRedDrawer),
          centerTitle: true,
          leading: Transform.scale(
            scale: 1.6,
            child: Animate(
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/flag/flag.png',
                ),
              ),
            ).animate().fade(delay: 500.ms, duration: 500.ms).slideX(),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: FadeInAnimation(
              delay: 1.3,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: kRedGradient,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 1.5, bottom: 5),
                  child: Column(
                    children: [
                      Text(
                        'Słownik',
                        style: GoogleFonts.bebasNeue(
                            color: Colors.white, fontSize: screenWidth / 12),
                      ),
                      AutoSizeText(
                        'Niby wszystko wiem, ale jednak sprawdzę :)',
                        style: GoogleFonts.lora(color: Colors.white),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Animate(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      labelText: 'Szukaj',
                      hintText: 'Wpisz słowo, którego szukasz',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _controller.text.isEmpty
                          ? Container(width: 0)
                          : IconButton(
                              onPressed: () {
                                _controller.clear();
                                setState(() {
                                  translated = ''; // Clear translation
                                  FocusScope.of(context).unfocus();
                                });
                              },
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
                ).animate().fade(delay: 400.ms, duration: 900.ms).scale(),
              ),
              const SizedBox(height: 20),
              Text(
                translated,
                style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: kRedColor),
              )
            ],
          ),
        ),
        endDrawer: const NavigationDrawerWidget(),
      ),
    );
  }
}
