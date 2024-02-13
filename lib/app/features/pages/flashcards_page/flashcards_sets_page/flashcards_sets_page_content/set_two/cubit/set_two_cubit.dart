import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/flashcards_model.dart';
import 'package:street_talk/app/domain/repositories/flashcards_two_repository.dart';

part 'set_two_state.dart';

class SetTwoCubit extends Cubit<SetTwoState> {
  SetTwoCubit({required this.flashCardsRepository}) : super(SetTwoState());

  final FlashCardsTwoRepository flashCardsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    final PageController pageController = PageController(initialPage: 0);

    emit(
      SetTwoState(
        items: [],
        status: Status.loading,
        errorMessage: '',
      ),
    );
    _streamSubscription =
        flashCardsRepository.getFlashCardsStream().listen((items) {
      items.shuffle();
      emit(SetTwoState(
        status: Status.success,
        items: items,
        controllerFlashPage: pageController,
      ));
    })
          ..onError((error) {
            emit(
              SetTwoState(
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
