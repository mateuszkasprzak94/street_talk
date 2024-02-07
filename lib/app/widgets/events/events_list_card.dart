import 'package:flutter/material.dart';
import 'package:street_talk/app/domain/models/spanish_events_details_model.dart';
import 'package:street_talk/app/drawer/drawer_content/spanish_events/spanish_events_content.dart';

class EventsListCard extends StatelessWidget {
  const EventsListCard(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => EventsContent(
                    selectedIndex: index,
                  )),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Hero(
                tag: eventCardDetailList[index].iconTag,
                child: Image.asset(
                  eventCardDetailList[index].iconAssetName,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Container(
                color: Colors.black26,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        eventCardDetailList[index].title,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
