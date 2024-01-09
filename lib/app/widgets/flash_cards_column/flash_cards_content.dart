// SET_ONE

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/domain/models/flashcards_model.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/cubit/set_one_cubit.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/cubit/set_three_cubit.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/cubit/set_two_cubit.dart';

class SetOnePageViewContent extends StatelessWidget {
  const SetOnePageViewContent({
    super.key,
    required this.word,
    required this.translation,
    required this.pageIndex,
  });

  final String word;
  final String translation;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetOneCubit, SetOneState>(
      builder: (context, state) {
        final FlashCardsModel flashCardsModel = state.setOneModel[pageIndex];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    word,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: flashCardsModel.isTranslationVisible
                    ? Text(
                        translation,
                        style:
                            const TextStyle(fontSize: 30, color: Colors.grey),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {
                          context
                              .read<SetOneCubit>()
                              .toggleTranslationVisibility(pageIndex);
                        },
                        child: const Text(
                          'Pokaż tłumaczenie',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       splashColor: Colors.transparent,
            //       highlightColor: Colors.transparent,
            //       onPressed: () {
            //         context.read<SetOneCubit>().updateSadIconColor(
            //             pageIndex, !flashCardsModel.sadIconColor, false);
            //       },
            //       icon: ImageIcon(
            //         const AssetImage(
            //           'assets/custom_icons/sad.png',
            //         ),
            //         color: flashCardsModel.sadIconColor
            //             ? Colors.red
            //             : Colors.black,
            //       ),
            //     ),
            //     IconButton(
            //       splashColor: Colors.transparent,
            //       highlightColor: Colors.transparent,
            //       onPressed: () {
            //         context.read<SetOneCubit>().updateSmileIconColor(
            //             pageIndex, !flashCardsModel.smileIconColor, false);
            //       },
            //       icon: ImageIcon(
            //         const AssetImage(
            //           'assets/custom_icons/smile.png',
            //         ),
            //         color: flashCardsModel.smileIconColor
            //             ? Colors.green
            //             : Colors.black,
            //       ),
            //     ),
            //   ],
            // ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<SetOneCubit>().previusPage();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<SetOneCubit>().nextPage();
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

// SET_TWO

class SetTwoPageViewContent extends StatelessWidget {
  const SetTwoPageViewContent({
    super.key,
    required this.word,
    required this.translation,
    required this.pageIndex,
  });

  final String word;
  final String translation;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetTwoCubit, SetTwoState>(
      builder: (context, state) {
        final FlashCardsModel flashCardsModel = state.setOneModel[pageIndex];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    word,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: flashCardsModel.isTranslationVisible
                    ? Text(
                        translation,
                        style:
                            const TextStyle(fontSize: 30, color: Colors.grey),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {
                          context
                              .read<SetTwoCubit>()
                              .toggleTranslationVisibility(pageIndex);
                        },
                        child: const Text(
                          'Pokaż tłumaczenie',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       splashColor: Colors.transparent,
            //       highlightColor: Colors.transparent,
            //       onPressed: () {
            //         context.read<SetTwoCubit>().updateSadIconColor(
            //             pageIndex, !flashCardsModel.sadIconColor, false);
            //       },
            //       icon: ImageIcon(
            //         const AssetImage(
            //           'assets/custom_icons/sad.png',
            //         ),
            //         color: flashCardsModel.sadIconColor
            //             ? Colors.red
            //             : Colors.black,
            //       ),
            //     ),
            //     IconButton(
            //       splashColor: Colors.transparent,
            //       highlightColor: Colors.transparent,
            //       onPressed: () {
            //         context.read<SetTwoCubit>().updateSmileIconColor(
            //             pageIndex, !flashCardsModel.smileIconColor, false);
            //       },
            //       icon: ImageIcon(
            //         const AssetImage(
            //           'assets/custom_icons/smile.png',
            //         ),
            //         color: flashCardsModel.smileIconColor
            //             ? Colors.green
            //             : Colors.black,
            //       ),
            //     ),
            //   ],
            // ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<SetTwoCubit>().previusPage();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<SetTwoCubit>().nextPage();
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

// SET_THREE

class SetThreePageViewContent extends StatelessWidget {
  const SetThreePageViewContent({
    super.key,
    required this.word,
    required this.translation,
    required this.pageIndex,
  });

  final String word;
  final String translation;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetThreeCubit, SetThreeState>(
      builder: (context, state) {
        final FlashCardsModel flashCardsModel = state.setOneModel[pageIndex];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    word,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: flashCardsModel.isTranslationVisible
                    ? Text(
                        translation,
                        style:
                            const TextStyle(fontSize: 30, color: Colors.grey),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {
                          context
                              .read<SetThreeCubit>()
                              .toggleTranslationVisibility(pageIndex);
                        },
                        child: const Text(
                          'Pokaż tłumaczenie',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       splashColor: Colors.transparent,
            //       highlightColor: Colors.transparent,
            //       onPressed: () {
            //         context.read<SetTwoCubit>().updateSadIconColor(
            //             pageIndex, !flashCardsModel.sadIconColor, false);
            //       },
            //       icon: ImageIcon(
            //         const AssetImage(
            //           'assets/custom_icons/sad.png',
            //         ),
            //         color: flashCardsModel.sadIconColor
            //             ? Colors.red
            //             : Colors.black,
            //       ),
            //     ),
            //     IconButton(
            //       splashColor: Colors.transparent,
            //       highlightColor: Colors.transparent,
            //       onPressed: () {
            //         context.read<SetTwoCubit>().updateSmileIconColor(
            //             pageIndex, !flashCardsModel.smileIconColor, false);
            //       },
            //       icon: ImageIcon(
            //         const AssetImage(
            //           'assets/custom_icons/smile.png',
            //         ),
            //         color: flashCardsModel.smileIconColor
            //             ? Colors.green
            //             : Colors.black,
            //       ),
            //     ),
            //   ],
            // ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<SetThreeCubit>().previusPage();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<SetThreeCubit>().nextPage();
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
