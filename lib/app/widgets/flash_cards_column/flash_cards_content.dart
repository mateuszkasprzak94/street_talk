import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/models/flashcards_model.dart';
import 'package:street_talk/app/pages/flashcards_page/cubit/flashcards_cubit.dart';

class PageViewContent extends StatelessWidget {
  const PageViewContent({
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
    return BlocBuilder<FlashCardsCubit, FlashCardsState>(
      builder: (context, state) {
        final FlashCardsModel flashCardsModel =
            state.flashCardsModel[pageIndex];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 150),
            Text(
              word,
              style: const TextStyle(fontSize: 50),
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
                              .read<FlashCardsCubit>()
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    context.read<FlashCardsCubit>().updateSadIconColor(
                        pageIndex, !flashCardsModel.sadIconColor, false);
                  },
                  icon: ImageIcon(
                    const AssetImage(
                      'assets/custom_icons/sad.png',
                    ),
                    color: flashCardsModel.sadIconColor
                        ? Colors.red
                        : Colors.black,
                  ),
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    context.read<FlashCardsCubit>().updateSmileIconColor(
                        pageIndex, !flashCardsModel.smileIconColor, false);
                  },
                  icon: ImageIcon(
                    const AssetImage(
                      'assets/custom_icons/smile.png',
                    ),
                    color: flashCardsModel.smileIconColor
                        ? Colors.green
                        : Colors.black,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<FlashCardsCubit>().previusPage();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<FlashCardsCubit>().nextPage();
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
