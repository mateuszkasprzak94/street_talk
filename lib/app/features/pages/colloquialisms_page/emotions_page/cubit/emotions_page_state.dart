part of 'emotions_page_cubit.dart';

class ColloquialismsPageState {
  ColloquialismsPageState({
    this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<EmotionsNameModel> results;
  final Status status;
  final String? errorMessage;
}
