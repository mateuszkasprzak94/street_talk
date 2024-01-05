import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'colloquialisms_page_state.dart';

class ColloquialismsPageCubit extends Cubit<ColloquialismsPageState> {
  ColloquialismsPageCubit() : super(ColloquialismsPageState());

  Future<void> start() async {
    final PageController pageControllerEmotions =
        PageController(initialPage: 0);
    emit(
      ColloquialismsPageState(
          controllerEmotionsPage: pageControllerEmotions, page: 0),
    );
  }

  Future<void> changePage() async {
    emit(
      ColloquialismsPageState(page: state.page),
    );
  }
}
