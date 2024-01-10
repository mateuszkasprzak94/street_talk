part of 'street_cubit.dart';

class StreetState {
  StreetState({
    this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<StreetModel> results;
  final Status status;
  final String? errorMessage;
}
