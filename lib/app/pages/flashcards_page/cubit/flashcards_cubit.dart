import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'flashcards_state.dart';

class FlashcardsCubit extends Cubit<FlashcardsState> {
  FlashcardsCubit(int pageCount) : super(FlashcardsState());

  Future<void> start() async {
    final PageController pageController = PageController(initialPage: 0);
    emit(
      FlashcardsState(
          isTranslationVisible: false,
          sadIconColor: false,
          smileIconColor: false,
          controllerFlashPage: pageController),
    );
  }

  Future<void> toggleTranslationVisibility() async {
    emit(state.copyWith(isTranslationVisible: !state.isTranslationVisible));
  }

  Future<void> updateSadIconColor(
      bool newSadIconColor, bool newSmileIconColor) async {
    emit(state.copyWith(
      sadIconColor: newSadIconColor,
      smileIconColor: newSmileIconColor,
    ));
  }

  Future<void> updateSmileIconColor(
      bool newSmileIconColor, bool newSadIconColor) async {
    emit(state.copyWith(
      smileIconColor: newSmileIconColor,
      sadIconColor: newSadIconColor,
    ));
  }

  Future<void> previusPage() async {
    await state.controllerFlashPage?.previousPage(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Future<void> nextPage() async {
    await state.controllerFlashPage?.nextPage(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Future<void> close() {
    state.controllerFlashPage?.dispose();
    return super.close();
  }
}
