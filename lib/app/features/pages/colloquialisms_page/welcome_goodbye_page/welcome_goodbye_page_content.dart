import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/welcome_goodbye_model.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/welcome_goodbye_page/cubit/welcome_goodbye_cubit.dart';
import 'package:street_talk/app/injection_container.dart';

class WelcomeGoodbyePage extends StatelessWidget {
  const WelcomeGoodbyePage({
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
                color: kRedColor,
              ),
              child: Center(
                child: Text(
                  'Przywitania i pożegnania',
                  style: GoogleFonts.bebasNeue(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: screenWidth / 12),
                ),
              ),
            ),
          ),
        ),
        body: BlocProvider<WelcomeGoodbyeCubit>(
          create: (context) {
            return getIt()..start();
          },
          child: BlocBuilder<WelcomeGoodbyeCubit, WelcomeGoodbyeState>(
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
                      for (final welcome in state.results)
                        _WelcomeGoodbyeItemWidget(
                          model: welcome,
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

class _WelcomeGoodbyeItemWidget extends StatelessWidget {
  const _WelcomeGoodbyeItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final WelcomeGoodbyeModel model;

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
              const SizedBox(height: 5),
              const Divider(
                thickness: 1,
                color: kRedColor,
                indent: 60,
                endIndent: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  model.title,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: kRedColor,
                indent: 60,
                endIndent: 60,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 46, 160, 17),
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
                          '${model.exampleOne} - ${model.exampleOneTranslation}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${model.exampleTwo} - ${model.exampleTwoTranslation}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${model.exampleThree} - ${model.exampleThreeTranslation}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${model.exampleFour} - ${model.exampleFourTranslation}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
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
