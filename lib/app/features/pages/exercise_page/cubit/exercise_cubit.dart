import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:street_talk/app/core/enums/enums.dart';

part 'generated/exercise_cubit.freezed.dart';
part 'exercise_state.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  ExerciseCubit() : super(ExerciseState());

  Future<void> start() async {
    final PageController pageController = PageController(initialPage: 0);
    emit(
      ExerciseState(
        status: Status.loading,
      ),
    );
    try {
      emit(
        ExerciseState(
          status: Status.success,
          controllerTaskPage: pageController,
        ),
      );
    } catch (error) {
      emit(
        ExerciseState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> previousPage() async {
    await state.controllerTaskPage?.previousPage(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Future<void> nextPage() async {
    await state.controllerTaskPage?.nextPage(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Future<void> close() {
    state.controllerTaskPage?.dispose();
    return super.close();
  }
}
