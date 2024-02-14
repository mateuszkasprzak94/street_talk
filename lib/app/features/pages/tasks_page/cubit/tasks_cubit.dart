import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/exercise_question_model.dart';

part 'generated/tasks_cubit.freezed.dart';
part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksState());

  Future<void> start() async {
    final PageController pageController = PageController(initialPage: 0);
    emit(
      TasksState(
        controllerTaskPage: pageController,
        status: Status.loading,
      ),
    );
  }

  Future<void> previusPage() async {
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
