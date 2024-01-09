class FlashCardsModel {
  FlashCardsModel({
    this.isTranslationVisible = false,
    this.sadIconColor = false,
    this.smileIconColor = false,
  });

  final bool isTranslationVisible;
  final bool sadIconColor;
  final bool smileIconColor;

  FlashCardsModel copyWith({
    bool? isTranslationVisible,
    bool? sadIconColor,
    bool? smileIconColor,
  }) {
    return FlashCardsModel(
      isTranslationVisible: isTranslationVisible ?? this.isTranslationVisible,
      sadIconColor: sadIconColor ?? this.sadIconColor,
      smileIconColor: smileIconColor ?? this.smileIconColor,
    );
  }
}
