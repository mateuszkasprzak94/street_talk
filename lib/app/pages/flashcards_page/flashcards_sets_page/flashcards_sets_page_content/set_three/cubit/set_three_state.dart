part of 'set_three_cubit.dart';

class SetThreeState {
  final List<FlashCardsModel> setOneModel;
  final PageController? controllerFlashPage;
  final int currentIndex;

  SetThreeState({
    required this.setOneModel,
    this.controllerFlashPage,
    this.currentIndex = 0,
  });

  SetThreeState copyWith({
    List<FlashCardsModel>? setOneModel,
    PageController? controllerFlashPage,
    int? currentIndex,
  }) {
    return SetThreeState(
      setOneModel: setOneModel ?? this.setOneModel,
      controllerFlashPage: controllerFlashPage ?? this.controllerFlashPage,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
