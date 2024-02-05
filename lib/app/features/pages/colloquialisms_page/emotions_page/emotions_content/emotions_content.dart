import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';
import 'package:street_talk/app/domain/models/emotions_name_model.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/cubit/emotions_content_cubit.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

class EmotionsContentPage extends StatefulWidget {
  const EmotionsContentPage({super.key, required this.name});

  final EmotionsNameModel name;

  @override
  State<EmotionsContentPage> createState() => _EmotionsContentPageState();
}

class _EmotionsContentPageState extends State<EmotionsContentPage> {
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
                color: kRedColor,
              ),
              child: Center(
                child: Text(
                  widget.name.emotion,
                  style: GoogleFonts.bebasNeue(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: screenWidth / 12),
                ),
              ),
            ),
          ),
        ),
        body: BlocProvider<EmotionsContentCubit>(
          create: (context) {
            return getIt()..fetchData(emotionId: widget.name.id);
          },
          child: BlocBuilder<EmotionsContentCubit, EmotionsContentState>(
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
                  return Column(
                    children: [
                      CarouselSlider(
                        carouselController: _controller,
                        items: [
                          for (final emotion in state.results)
                            _EmotionsItemWidget(
                              model: emotion,
                            ),
                        ],
                        options: CarouselOptions(
                          autoPlay: false,
                          aspectRatio: 0.75,
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
                          backgroundColor: getEmotionColor(widget.name.id),
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

class _EmotionsItemWidget extends StatelessWidget {
  const _EmotionsItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final EmotionsContentModel model;

  @override
  Widget build(BuildContext context) {
    final color = getEmotionColor(model.emotionId);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 400,
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
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                thickness: 1.7,
                color: kRedColor,
                indent: 70,
                endIndent: 70,
              ),
              SizedBox(
                height: 60,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: AutoSizeText(
                      model.wordTranslation,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
                      minFontSize: 14,
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1.7,
                color: kRedColor,
                indent: 70,
                endIndent: 70,
              ),
              SizedBox(
                height: 166,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'EJEMPLO',
                            style: TextStyle(
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.black),
                          ),
                        ],
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
      ],
    );
  }
}

Color getEmotionColor(int emotionId) {
  switch (emotionId) {
    case 1:
      return const Color.fromARGB(202, 175, 12, 180);
    case 2:
      return const Color.fromARGB(251, 212, 4, 25);
    case 3:
      return const Color.fromARGB(255, 11, 198, 36);
    case 4:
      return const Color.fromARGB(179, 11, 108, 198);
    case 5:
      return const Color.fromARGB(255, 125, 212, 53);
    case 6:
      return const Color.fromARGB(255, 192, 47, 11);
    case 7:
      return const Color.fromARGB(255, 64, 81, 136);
    default:
      return Colors.black;
  }
}
