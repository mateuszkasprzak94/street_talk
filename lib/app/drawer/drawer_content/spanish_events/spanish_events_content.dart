import 'package:flutter/material.dart';
import 'package:street_talk/app/domain/models/spanish_events_details_model.dart';
import 'package:street_talk/app/widgets/events/custom_pop_button.dart';

class EventsContent extends StatelessWidget {
  const EventsContent({required this.selectedIndex, super.key});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Hero(
            tag: eventCardDetailList[selectedIndex].iconTag,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              child: SizedBox(
                  child: Image.asset(
                      eventCardDetailList[selectedIndex].iconAssetName)),
            ),
          ),
          const SizedBox(height: 50),
          const CustomPopButton(),
        ],
      ),
    );
  }
}
