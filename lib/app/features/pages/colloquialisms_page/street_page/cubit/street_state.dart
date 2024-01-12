part of 'street_cubit.dart';

@freezed
class StreetState with _$StreetState {
  factory StreetState({
    @Default([]) List<StreetModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _StreetState;
}
