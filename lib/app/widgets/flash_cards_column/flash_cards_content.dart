// SET_ONE

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/domain/models/flashcards_model.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/cubit/set_one_cubit.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/cubit/set_three_cubit.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/cubit/set_two_cubit.dart';

class SetOnePageViewContent extends StatefulWidget {
  const SetOnePageViewContent({
    required this.flashModel,
    super.key,
  });

  final FlashCardsDetailModel flashModel;

  @override
  State<SetOnePageViewContent> createState() => _SetOnePageViewContentState();
}

class _SetOnePageViewContentState extends State<SetOnePageViewContent> {
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetOneCubit, SetOneState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      widget.flashModel.word,
                      style: const TextStyle(fontSize: 40),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: visibility
                      ? Text(
                          widget.flashModel.translation,
                          style:
                              const TextStyle(fontSize: 30, color: Colors.grey),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: () =>
                              setState(() => visibility = !visibility),
                          child: const Text(
                            'Pokaż tłumaczenie',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<SetOneCubit>().previusPage();
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<SetOneCubit>().nextPage();
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}

// SET_TWO

class SetTwoPageViewContent extends StatefulWidget {
  const SetTwoPageViewContent({
    required this.flashModel,
    super.key,
  });

  final FlashCardsDetailModel flashModel;

  @override
  State<SetTwoPageViewContent> createState() => _SetTwoPageViewContentState();
}

class _SetTwoPageViewContentState extends State<SetTwoPageViewContent> {
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetTwoCubit, SetTwoState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      widget.flashModel.word,
                      style: const TextStyle(fontSize: 40),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: visibility
                      ? Text(
                          widget.flashModel.translation,
                          style:
                              const TextStyle(fontSize: 30, color: Colors.grey),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: () =>
                              setState(() => visibility = !visibility),
                          child: const Text(
                            'Pokaż tłumaczenie',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<SetTwoCubit>().previusPage();
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<SetTwoCubit>().nextPage();
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}

// SET_THREE

class SetThreePageViewContent extends StatefulWidget {
  const SetThreePageViewContent({
    required this.flashModel,
    super.key,
  });

  final FlashCardsDetailModel flashModel;

  @override
  State<SetThreePageViewContent> createState() =>
      _SetThreePageViewContentState();
}

class _SetThreePageViewContentState extends State<SetThreePageViewContent> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetThreeCubit, SetThreeState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      widget.flashModel.word,
                      style: const TextStyle(fontSize: 40),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: visibility
                      ? Text(
                          widget.flashModel.translation,
                          style:
                              const TextStyle(fontSize: 30, color: Colors.grey),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: () =>
                              setState(() => visibility = !visibility),
                          child: const Text(
                            'Pokaż tłumaczenie',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<SetThreeCubit>().previusPage();
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<SetThreeCubit>().nextPage();
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
