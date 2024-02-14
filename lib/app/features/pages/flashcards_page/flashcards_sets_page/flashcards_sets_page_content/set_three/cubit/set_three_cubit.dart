import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/flashcards_model.dart';
import 'package:street_talk/app/domain/repositories/flashcards_three_repository.dart';

part 'generated/set_three_cubit.freezed.dart';
part 'set_three_state.dart';

class SetThreeCubit extends Cubit<SetThreeState> {
  SetThreeCubit({required this.flashCardsRepository}) : super(SetThreeState());

  final FlashCardsThreeRepository flashCardsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    final PageController pageController = PageController(initialPage: 0);
    emit(
      SetThreeState(
        items: [],
        status: Status.loading,
        errorMessage: '',
      ),
    );
    _streamSubscription =
        flashCardsRepository.getFlashCardsStream().listen((items) {
      items.shuffle();
      emit(SetThreeState(
        status: Status.success,
        items: items,
        controllerFlashPage: pageController,
      ));
    })
          ..onError((error) {
            emit(
              SetThreeState(
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
