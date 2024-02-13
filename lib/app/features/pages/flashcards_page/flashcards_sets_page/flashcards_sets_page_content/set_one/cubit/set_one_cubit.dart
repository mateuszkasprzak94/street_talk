import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/flashcards_model.dart';
import 'package:street_talk/app/domain/repositories/flashcards_one_repository.dart';

part 'set_one_state.dart';

class SetOneCubit extends Cubit<SetOneState> {
  SetOneCubit({required this.flashCardsRepository}) : super(SetOneState());

  final FlashCardsOneRepository flashCardsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    final PageController pageController = PageController(initialPage: 0);

    emit(
      SetOneState(
        items: [],
        status: Status.loading,
        errorMessage: '',
      ),
    );
    _streamSubscription =
        flashCardsRepository.getFlashCardsStream().listen((items) {
      items.shuffle();
      emit(SetOneState(
        status: Status.success,
        items: items,
        controllerFlashPage: pageController,
      ));
    })
          ..onError((error) {
            emit(
              SetOneState(
                items: const [],
                status: Status.error,
                errorMessage: error.toString(),
              ),
            );
          });
  }

  Future<void> previusPage() async {
    await state.controllerFlashPage?.previousPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Future<void> nextPage() async {
    await state.controllerFlashPage?.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
