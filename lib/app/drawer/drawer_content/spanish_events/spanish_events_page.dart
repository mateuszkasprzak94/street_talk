import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/domain/models/spanish_events_details_model.dart';
import 'package:street_talk/app/widgets/events/events_list_card.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

class SpanishEventsPage extends StatefulWidget {
  const SpanishEventsPage({super.key});

  @override
  State<SpanishEventsPage> createState() => _SpanishEventsPageState();
}

class _SpanishEventsPageState extends State<SpanishEventsPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const CustomCloseButton(),
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
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: kRedGradient,
              ),
            ),
            child: Center(
              child: Text(
                'Popularne Wydarzenia',
                style: GoogleFonts.bebasNeue(
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: screenWidth / 12),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
          child: Column(
            children: [
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: eventCardDetailList.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return EventsListCard(index);
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
