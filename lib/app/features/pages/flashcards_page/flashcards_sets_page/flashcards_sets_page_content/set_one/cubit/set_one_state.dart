part of 'set_one_cubit.dart';

class SetOneState {
  final List<FlashCardsModel> setOneModel;
  final PageController? controllerFlashPage;
  final int currentIndex;

  SetOneState({
    required this.setOneModel,
    this.controllerFlashPage,
    this.currentIndex = 0,
  });

  SetOneState copyWith({
    List<FlashCardsModel>? setOneModel,
    PageController? controllerFlashPage,
    int? currentIndex,
  }) {
    return SetOneState(
      setOneModel: setOneModel ?? this.setOneModel,
      controllerFlashPage: controllerFlashPage ?? this.controllerFlashPage,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
