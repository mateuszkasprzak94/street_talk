part of 'emotions_content_cubit.dart';

class EmotionsContentState {
  EmotionsContentState({
    this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<EmotionsContentModel> results;
  final Status status;
  final String? errorMessage;
}
