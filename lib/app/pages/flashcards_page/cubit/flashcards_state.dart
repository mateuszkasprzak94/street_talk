part of 'flashcards_cubit.dart';

class FlashcardsState {
  FlashcardsState({
    this.isTranslationVisible = false,
    this.sadIconColor = false,
    this.smileIconColor = false,
    this.controllerFlashPage,
  });

  final bool isTranslationVisible;
  final bool sadIconColor;
  final bool smileIconColor;
  final PageController? controllerFlashPage;

  FlashcardsState copyWith({
    bool? isTranslationVisible,
    bool? sadIconColor,
    bool? smileIconColor,
    PageController? controllerFlashPage,
  }) {
    return FlashcardsState(
      isTranslationVisible: isTranslationVisible ?? this.isTranslationVisible,
      sadIconColor: sadIconColor ?? this.sadIconColor,
      smileIconColor: smileIconColor ?? this.smileIconColor,
      controllerFlashPage: controllerFlashPage ?? this.controllerFlashPage,
    );
  }
}
