import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksState());

  Future<void> start() async {
    final PageController pageController = PageController(initialPage: 0);
    emit(
      TasksState(controllerTaskPage: pageController),
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
