part of 'set_one_cubit.dart';

class SetOneState {
  final List<FlashCardsDetailModel> items;
  final PageController? controllerFlashPage;
  final Status status;
  final String? errorMessage;

  SetOneState({
    this.items = const [],
    this.controllerFlashPage,
    this.status = Status.initial,
    this.errorMessage,
  });
}
