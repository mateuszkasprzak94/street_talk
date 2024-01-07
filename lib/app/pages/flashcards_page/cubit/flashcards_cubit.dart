import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:street_talk/app/models/flashcards_model.dart';

part 'flashcards_state.dart';

class FlashCardsCubit extends Cubit<FlashCardsState> {
  FlashCardsCubit() : super(FlashCardsState(flashCardsModel: []));

  Future<void> start() async {
    final List<FlashCardsModel> initialPageStates = List.generate(
      97,
      (index) => FlashCardsModel(),
    );

    final random = Random();
    final randomIndex = random.nextInt(initialPageStates.length);

    final PageController pageController =
        PageController(initialPage: randomIndex);
    emit(
      FlashCardsState(
          flashCardsModel: initialPageStates,
          controllerFlashPage: pageController),
    );
  }

  Future<void> toggleTranslationVisibility(int pageIndex) async {
    final List<FlashCardsModel> updatedPageStates =
        List.from(state.flashCardsModel);
    updatedPageStates[pageIndex] = updatedPageStates[pageIndex].copyWith(
      isTranslationVisible: !updatedPageStates[pageIndex].isTranslationVisible,
    );
    emit(state.copyWith(flashCardsModel: updatedPageStates));
  }

  Future<void> updateSadIconColor(
      int pageIndex, bool newSadIconColor, bool newSmileIconColor) async {
    final List<FlashCardsModel> updatedPageStates =
        List.from(state.flashCardsModel);
    updatedPageStates[pageIndex] = updatedPageStates[pageIndex].copyWith(
      sadIconColor: newSadIconColor,
      smileIconColor: newSmileIconColor,
    );
    emit(state.copyWith(flashCardsModel: updatedPageStates));
  }

  Future<void> updateSmileIconColor(
      int pageIndex, bool newSmileIconColor, bool newSadIconColor) async {
    final List<FlashCardsModel> updatedPageStates =
        List.from(state.flashCardsModel);
    updatedPageStates[pageIndex] = updatedPageStates[pageIndex].copyWith(
      smileIconColor: newSmileIconColor,
      sadIconColor: newSadIconColor,
    );
    emit(state.copyWith(flashCardsModel: updatedPageStates));
  }

  Future<void> previusPage() async {
    await state.controllerFlashPage?.previousPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Future<void> nextPage() async {
    await state.controllerFlashPage?.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Future<void> close() {
    state.controllerFlashPage?.dispose();
    return super.close();
  }
}
