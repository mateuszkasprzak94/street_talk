part of 'emotions_content_cubit.dart';

@freezed
class EmotionsContentState with _$EmotionsContentState {
  factory EmotionsContentState({
    @Default([]) List<EmotionsContentModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _EmotionsContentState;
}
