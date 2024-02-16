import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/cubit/set_two_cubit.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:street_talk/app/widgets/flash_cards_column/flash_cards_content.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

class FlashCardsSetTwo extends StatelessWidget {
  const FlashCardsSetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider<SetTwoCubit>(
      create: (context) => getIt()..start(),
      child: BlocBuilder<SetTwoCubit, SetTwoState>(
        builder: (context, state) {
          final flashModels = state.items;
          switch (state.status) {
            case Status.initial:
              return const Center(
                child: Text('Initial state'),
              );
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.success:
              if (flashModels.isEmpty) {
                return const Center(
                  child: Text('No data found'),
                );
              }
              return Scaffold(
                appBar: AppBar(
                  leading: const CustomCloseButton(),
                  centerTitle: true,
                  actions: const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 30,
                        foregroundImage: AssetImage('assets/images/logo.jpg'),
                      ),
                    )
                  ],
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(70),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: kRedGradient,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Zestaw 2',
                          style: GoogleFonts.bebasNeue(
                              letterSpacing: 2,
                              color: Colors.white,
                              fontSize: screenWidth / 12),
                        ),
                      ),
                    ),
                  ),
                ),
                body: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: state.controllerFlashPage,
                  children: [
                    for (final flashModel in flashModels) ...[
                      SetTwoPageViewContent(flashModel: flashModel)
                    ],
                  ],
                ),
              );
            case Status.error:
              return Center(
                child: Text(
                  state.errorMessage ?? 'Unknown error',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
