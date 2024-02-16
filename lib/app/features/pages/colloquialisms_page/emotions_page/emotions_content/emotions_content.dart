import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/emotions_name_model.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/cubit/emotions_content_cubit.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_item_widget.dart';
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
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: kRedGradient,
                ),
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
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        carouselController: _controller,
                        items: [
                          for (final emotion in state.results)
                            EmotionsItemWidget(
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
                      GestureDetector(
                        onTap: () {
                          int randomPageIndex;
                          do {
                            randomPageIndex =
                                Random().nextInt(state.results.length);
                          } while (randomPageIndex == currentPage);

                          _controller.animateToPage(randomPageIndex);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: getEmotionColorGradient(widget.name.id),
                              ),
                              borderRadius: BorderRadius.circular(55),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                'Losowo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
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

Color getEmotionColor(int emotionId) {
  switch (emotionId) {
    case 1:
      return const Color.fromARGB(201, 148, 11, 153);
    case 2:
      return const Color.fromARGB(250, 141, 3, 17);
    case 3:
      return const Color.fromARGB(255, 8, 136, 25);
    case 4:
      return const Color.fromARGB(179, 8, 77, 141);
    case 5:
      return const Color.fromARGB(255, 87, 150, 36);
    case 6:
      return const Color.fromARGB(255, 134, 34, 8);
    case 7:
      return const Color.fromARGB(255, 41, 51, 87);
    default:
      return Colors.black;
  }
}

List<Color> getEmotionColorGradient(int emotionId) {
  switch (emotionId) {
    case 1:
      return kSurpriseGradient;
    case 2:
      return kAngryGradient;
    case 3:
      return kAgreeGradient;
    case 4:
      return kDissGradient;
    case 5:
      return kHappyGradient;
    case 6:
      return kBoredGradient;
    case 7:
      return kResiGradient;
    default:
      return kRedGradient;
  }
}
