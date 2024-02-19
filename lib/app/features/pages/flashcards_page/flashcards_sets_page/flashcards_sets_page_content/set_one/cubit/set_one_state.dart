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
