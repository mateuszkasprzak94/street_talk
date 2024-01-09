import 'package:bloc/bloc.dart';
import 'package:street_talk/app/core/enums.dart';
import 'package:street_talk/app/domain/models/emotions_name_model.dart';
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart';

part 'colloquialisms_page_state.dart';

class ColloquialismsPageCubit extends Cubit<ColloquialismsPageState> {
  ColloquialismsPageCubit({required this.emotionsNameRepository})
      : super(ColloquialismsPageState());

  final EmotionsNameRepository emotionsNameRepository;

  Future<void> start() async {
    emit(
      ColloquialismsPageState(
        status: Status.loading,
      ),
    );
    try {
      final results = await emotionsNameRepository.getEmotionsName();
      emit(
        ColloquialismsPageState(status: Status.success, results: results),
      );
    } catch (error) {
      emit(
        ColloquialismsPageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
