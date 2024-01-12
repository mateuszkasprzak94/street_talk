import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/welcome_goodbye_model.dart';
import 'package:street_talk/app/domain/repositories/welcome_goodybe_repository.dart';

part 'welcome_goodbye_cubit.freezed.dart';
part 'welcome_goodbye_state.dart';

class WelcomeGoodbyeCubit extends Cubit<WelcomeGoodbyeState> {
  WelcomeGoodbyeCubit({required this.welcomeGoobyeRepository})
      : super(WelcomeGoodbyeState());

  final WelcomeGoodbyeRepository welcomeGoobyeRepository;

  Future<void> start() async {
    emit(WelcomeGoodbyeState(status: Status.loading));
    try {
      final results = await welcomeGoobyeRepository.getWelcomeGoodbyeData();
      emit(
        WelcomeGoodbyeState(
          status: Status.success,
          results: results,
        ),
      );
    } catch (error) {
      emit(
        WelcomeGoodbyeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
