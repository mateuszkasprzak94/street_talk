part of 'events_cubit.dart';

class EventsState {
  EventsState({
    this.eventsData = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<EventsModel> eventsData;
  final Status status;
  final String? errorMessage;
}
