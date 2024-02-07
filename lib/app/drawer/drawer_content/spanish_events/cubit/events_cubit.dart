import 'package:bloc/bloc.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/events_model.dart';
import 'package:street_talk/app/domain/repositories/events_repository.dart';

part 'events_state.dart';

class EventsCubit extends Cubit<EventsState> {
  EventsCubit({required this.eventsRepository}) : super(EventsState());

  final EventsRepository eventsRepository;

  Future<void> fetchEvents({required String category}) async {
    emit(
      EventsState(
        status: Status.loading,
      ),
    );
    try {
      final quizData = await eventsRepository.getEventsContent(category);

      emit(
        EventsState(
          status: Status.success,
          eventsData: quizData,
        ),
      );
    } catch (error) {
      emit(
        EventsState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
