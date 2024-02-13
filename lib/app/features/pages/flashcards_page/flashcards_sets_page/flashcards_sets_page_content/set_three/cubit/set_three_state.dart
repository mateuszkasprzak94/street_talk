part of 'set_three_cubit.dart';

class SetThreeState {
  final List<FlashCardsDetailModel> items;
  final PageController? controllerFlashPage;
  final Status status;
  final String? errorMessage;

  SetThreeState({
    this.items = const [],
    this.controllerFlashPage,
    this.status = Status.initial,
    this.errorMessage,
  });
}
