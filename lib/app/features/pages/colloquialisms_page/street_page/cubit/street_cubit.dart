import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/street_model.dart';
import 'package:street_talk/app/domain/repositories/street_repository.dart';

part 'street_cubit.freezed.dart';
part 'street_state.dart';

@injectable
class StreetCubit extends Cubit<StreetState> {
  StreetCubit({required this.streetRepository}) : super(StreetState());

  final StreetRepository streetRepository;

  Future<void> start() async {
    emit(
      StreetState(
        status: Status.loading,
      ),
    );
    try {
      final results = await streetRepository.getStreetData();
      emit(
        StreetState(status: Status.success, results: results),
      );
    } catch (error) {
      emit(
        StreetState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
