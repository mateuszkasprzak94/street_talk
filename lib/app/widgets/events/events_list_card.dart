import 'package:flutter/material.dart';
import 'package:street_talk/app/domain/models/spanish_events_details_model.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/screens/before_start_screen.dart';

class EventsListCard extends StatelessWidget {
  const EventsListCard(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BeforeStartScreen(
                      selectedIndex: index,
                    )),
          );
        },
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 55),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventCardDetailList[index].title,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Hero(
              tag: eventCardDetailList[index].iconTag,
              child: Image.asset(
                eventCardDetailList[index].iconAssetName,
                scale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
