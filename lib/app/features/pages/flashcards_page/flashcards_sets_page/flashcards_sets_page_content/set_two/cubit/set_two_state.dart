part of 'set_two_cubit.dart';

@freezed
class SetTwoState with _$SetTwoState {
  factory SetTwoState({
    @Default([]) List<FlashCardsDetailModel> items,
    PageController? controllerFlashPage,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _SetTwoState;
}
