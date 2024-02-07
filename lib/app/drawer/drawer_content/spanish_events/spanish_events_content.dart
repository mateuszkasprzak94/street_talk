import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/domain/models/spanish_events_details_model.dart';
import 'package:street_talk/app/drawer/drawer_content/spanish_events/cubit/events_cubit.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:street_talk/app/widgets/events/custom_pop_button.dart';

class EventsContent extends StatelessWidget {
  const EventsContent({required this.selectedIndex, super.key});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: BlocProvider<EventsCubit>(
        create: (context) => getIt()
          ..fetchEvents(category: eventCardDetailList[selectedIndex].category),
        child: BlocBuilder<EventsCubit, EventsState>(
          builder: (context, state) {
            return Column(
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
            );
          },
        ),
      ),
    );
  }
}
