import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/street_model.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/street_page/cubit/street_cubit.dart';
import 'package:street_talk/app/injection_container.dart';

class StreetPage extends StatelessWidget {
  const StreetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
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
                color: Color(0xFFc60b1e),
              ),
              child: Center(
                child: Text(
                  'Hiszpański prosto z ulicy',
                  style: GoogleFonts.bebasNeue(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: screenWidth / 12),
                ),
              ),
            ),
          ),
        ),
        body: BlocProvider<StreetCubit>(
          create: (context) {
            return getIt()..start();
          },
          child: BlocBuilder<StreetCubit, StreetState>(
            builder: (context, state) {
              switch (state.status) {
                case Status.initial:
                  return const Center(
                    child: Text('Initial state'),
                  );
                case Status.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case Status.success:
                  if (state.results.isEmpty) {
                    return const Center(
                      child: Text('No data found'),
                    );
                  }
                  return ListView(
                    children: [
                      for (final emotion in state.results)
                        _StreetItemWidget(
                          model: emotion,
                        ),
                    ],
                  );
                case Status.error:
                  return Center(
                    child: Text(
                      state.errorMessage ?? 'Unknown error',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
              }
            },
          ),
        ));
  }
}

class _StreetItemWidget extends StatelessWidget {
  const _StreetItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final StreetModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.mapPin,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  model.word,
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFFc60b1e),
                indent: 70,
                endIndent: 70,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  model.wordTranslation,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFFc60b1e),
                indent: 70,
                endIndent: 70,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const Text(
                      'EJEMPLO',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 9),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.exampleOne,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          model.exampleTwo,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 50,
          thickness: 5,
          color: Colors.grey,
          indent: 150,
          endIndent: 150,
        )
      ],
    );
  }
}
