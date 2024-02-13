part of 'set_two_cubit.dart';

class SetTwoState {
  final List<FlashCardsDetailModel> items;
  final PageController? controllerFlashPage;
  final int currentIndex;
  final Status status;
  final String? errorMessage;

  SetTwoState({
    this.items = const [],
    this.controllerFlashPage,
    this.currentIndex = 0,
    this.status = Status.initial,
    this.errorMessage,
  });
}
