import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';
import 'package:street_talk/app/domain/repositories/emotions_content_repository.dart';

part 'emotions_content_cubit.freezed.dart';
part 'emotions_content_state.dart';

class EmotionsContentCubit extends Cubit<EmotionsContentState> {
  EmotionsContentCubit({required this.emotionsContentRepository})
      : super(EmotionsContentState());

  final EmotionsContentRepository emotionsContentRepository;

  Future<void> fetchData({required int emotionId}) async {
    emit(
      EmotionsContentState(
        status: Status.loading,
      ),
    );
    try {
      final results =
          await emotionsContentRepository.getContentForEmotionId(emotionId);
      emit(
        EmotionsContentState(status: Status.success, results: results),
      );
    } catch (error) {
      emit(
        EmotionsContentState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
