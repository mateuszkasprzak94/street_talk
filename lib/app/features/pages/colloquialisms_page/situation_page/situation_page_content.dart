import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/situations_model.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/situation_page/cubit/situation_cubit.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

class SituationPage extends StatefulWidget {
  const SituationPage({
    super.key,
  });

  @override
  State<SituationPage> createState() => _SituationPageState();
}

class _SituationPageState extends State<SituationPage> {
  final CarouselController _controller = CarouselController();
  int currentPage = 0;

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
                  'Na konkretną sytuacje',
                  style: GoogleFonts.bebasNeue(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: screenWidth / 12),
                ),
              ),
            ),
          ),
        ),
        body: BlocProvider<SituationCubit>(
          create: (context) {
            return getIt()..start();
          },
          child: BlocBuilder<SituationCubit, SituationState>(
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
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        carouselController: _controller,
                        items: [
                          for (final emotion in state.results)
                            _SituationItemWidget(
                              model: emotion,
                            ),
                        ],
                        options: CarouselOptions(
                          autoPlay: false,
                          aspectRatio: 0.65,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentPage = index;
                            });
                          },
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          int randomPageIndex;
                          do {
                            randomPageIndex =
                                Random().nextInt(state.results.length);
                          } while (randomPageIndex == currentPage);

                          _controller.animateToPage(randomPageIndex);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kRedSecondary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          'Losowo',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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

class _SituationItemWidget extends StatelessWidget {
  const _SituationItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final SituationModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 410,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  model.id.toString(),
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.green),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: AutoSizeText(
                      model.word,
                      style: const TextStyle(
                        fontSize: 35,
                      ),
                      maxLines: 2,
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: kRedColor,
                indent: 70,
                endIndent: 70,
              ),
              SizedBox(
                height: 40,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: AutoSizeText(
                      model.wordTranslation,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: kRedColor,
                indent: 70,
                endIndent: 70,
              ),
              SizedBox(
                height: 190,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.amber,
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
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  model.exampleOne,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  model.exampleTwo,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // const Divider(
        //   height: 50,
        //   thickness: 5,
        //   color: Colors.grey,
        //   indent: 150,
        //   endIndent: 150,
        // )
      ],
    );
  }
}
