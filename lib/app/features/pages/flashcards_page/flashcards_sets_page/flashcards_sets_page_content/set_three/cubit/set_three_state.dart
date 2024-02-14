part of 'set_three_cubit.dart';

@freezed
class SetThreeState with _$SetThreeState {
  factory SetThreeState({
    @Default([]) List<FlashCardsDetailModel> items,
    PageController? controllerFlashPage,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _SetThreeState;
}
