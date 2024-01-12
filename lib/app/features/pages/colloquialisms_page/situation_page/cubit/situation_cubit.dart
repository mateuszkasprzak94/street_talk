import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/situations_model.dart';
import 'package:street_talk/app/domain/repositories/situations_reposiotry.dart';

part 'situation_cubit.freezed.dart';
part 'situation_state.dart';

class SituationCubit extends Cubit<SituationState> {
  SituationCubit({required this.situationRepository}) : super(SituationState());

  final SituationRepository situationRepository;

  Future<void> start() async {
    emit(
      SituationState(
        status: Status.loading,
      ),
    );
    try {
      final results = await situationRepository.getSituationData();
      emit(
        SituationState(
          status: Status.success,
          results: results,
        ),
      );
    } catch (error) {
      emit(
        SituationState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
