part of 'set_one_cubit.dart';

@freezed
class SetOneState with _$SetOneState {
  factory SetOneState({
    @Default([]) List<FlashCardsDetailModel> items,
    PageController? controllerFlashPage,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _SetOneState;
}

// class SetOneState {
//   final List<FlashCardsDetailModel> items;
//   final PageController? controllerFlashPage;
//   final Status status;
//   final String? errorMessage;

//   SetOneState({
//     this.items = const [],
//     this.controllerFlashPage,
//     this.status = Status.initial,
//     this.errorMessage,
//   });
// }
