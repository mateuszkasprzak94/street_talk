part of 'emotions_page_cubit.dart';

@freezed
class EmotionsPageState with _$EmotionsPageState {
  factory EmotionsPageState({
    @Default([]) List<EmotionsNameModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _EmotionsPageState;
}
