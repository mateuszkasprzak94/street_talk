import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/utility/spanish_events_details.dart';
import 'package:street_talk/app/widgets/events/custom_pop_button.dart';

class EventsContent extends StatelessWidget {
  const EventsContent({required this.selectedIndex, super.key});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            automaticallyImplyLeading: false,
            floating: true,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: eventCardDetailList[selectedIndex].iconTag,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  child: SizedBox(
                    child: Image.asset(
                      eventCardDetailList[selectedIndex].iconAssetName,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, bottom: 5, right: 20),
                        child: AutoSizeText(
                          eventCardDetailList[selectedIndex].title,
                          maxLines: 2,
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: FaIcon(
                        FontAwesomeIcons.mapLocationDot,
                        color: kRedColor,
                      ),
                    ),
                    Text(
                      eventCardDetailList[selectedIndex].location,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    eventCardDetailList[selectedIndex].description,
                    style: GoogleFonts.ptSerif(
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Kluczowe cechy:',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    eventCardDetailList[selectedIndex].keyFeatures,
                    style: GoogleFonts.ptSerif(fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Data:',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      eventCardDetailList[selectedIndex].date,
                      style: GoogleFonts.ptSerif(fontSize: 17),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const CustomPopButton(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
