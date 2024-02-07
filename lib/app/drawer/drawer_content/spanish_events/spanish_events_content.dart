import 'package:flutter/material.dart';
import 'package:street_talk/app/domain/models/spanish_events_details_model.dart';

class EventsContent extends StatelessWidget {
  const EventsContent({required this.selectedIndex, super.key});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: quizCardDetailList[selectedIndex].gradientsColor,
        //     begin: Alignment.bottomRight,
        //     end: Alignment.topLeft,
        //   ),
        // ),
        // child: Scaffold(
        //   backgroundColor: Colors.transparent,
        //   body: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       const Row(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           CustomCloseButton(),
        //         ],
        //       ),
        //       Text(
        //         quizCardDetailList[selectedIndex].title,
        //         style: const TextStyle(
        //           fontWeight: FontWeight.w800,
        //           fontSize: 30,
        //           color: Colors.white,
        //         ),
        //       ),
        //       Hero(
        //         tag: quizCardDetailList[selectedIndex].iconTag,
        //         child: Image.asset(
        //           quizCardDetailList[selectedIndex].iconName,
        //           height: 250,
        //           width: 250,
        //         ),
        //       ),
        //       Column(
        //         children: [
        //           const Text(
        //             'Jesteś Gotowy?',
        //             style: TextStyle(
        //               fontWeight: FontWeight.bold,
        //               fontSize: 30,
        //               color: Colors.white,
        //             ),
        //           ),
        //           const SizedBox(height: 5),

        //           const SizedBox(height: 50),

        //         ],
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
