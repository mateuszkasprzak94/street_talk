import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/emotions_name_model.dart';
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart';

part 'emotions_page_cubit.freezed.dart';
part 'emotions_page_state.dart';

class EmotionsPageCubit extends Cubit<EmotionsPageState> {
  EmotionsPageCubit({required this.emotionsNameRepository})
      : super(EmotionsPageState());

  final EmotionsNameRepository emotionsNameRepository;

  Future<void> start() async {
    emit(
      EmotionsPageState(
        status: Status.loading,
      ),
    );
    try {
      final results = await emotionsNameRepository.getEmotionsName();
      emit(
        EmotionsPageState(status: Status.success, results: results),
      );
    } catch (error) {
      emit(
        EmotionsPageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
