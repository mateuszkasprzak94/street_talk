part of 'set_two_cubit.dart';

class SetTwoState {
  final List<FlashCardsModel> setOneModel;
  final PageController? controllerFlashPage;
  final int currentIndex;

  SetTwoState({
    required this.setOneModel,
    this.controllerFlashPage,
    this.currentIndex = 0,
  });

  SetTwoState copyWith({
    List<FlashCardsModel>? setOneModel,
    PageController? controllerFlashPage,
    int? currentIndex,
  }) {
    return SetTwoState(
      setOneModel: setOneModel ?? this.setOneModel,
      controllerFlashPage: controllerFlashPage ?? this.controllerFlashPage,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
