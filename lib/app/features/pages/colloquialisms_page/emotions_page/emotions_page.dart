import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/emotions_name_model.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/cubit/emotions_page_cubit.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/emotions_content.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:street_talk/app/widgets/animations/animation.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

class EmotionsPage extends StatelessWidget {
  const EmotionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          leading: const FadeInAnimation(
            delay: 1.3,
            child: CustomCloseButton(),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: FadeInAnimation(
                delay: 1.3,
                child: CircleAvatar(
                  radius: 30,
                  foregroundImage: AssetImage('assets/images/logo.jpg'),
                ),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: FadeInAnimation(
              delay: 1.6,
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
                    'Jak wyrażać emocje',
                    style: GoogleFonts.bebasNeue(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: screenWidth / 12),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: BlocProvider<EmotionsPageCubit>(
          create: (context) => getIt()..start(),
          child: BlocBuilder<EmotionsPageCubit, EmotionsPageState>(
            builder: (context, state) {
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
                  return ListWheelScrollView(
                    physics: const FixedExtentScrollPhysics(),
                    diameterRatio: 1,
                    itemExtent: 200,
                    children: [
                      for (final emotion in state.results)
                        EmotionsButtonWidget(
                          model: emotion,
                        ),
                    ],
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
        ));
  }
}

class EmotionsButtonWidget extends StatelessWidget {
  const EmotionsButtonWidget({
    required this.model,
    super.key,
  });

  final EmotionsNameModel model;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => EmotionsContentPage(name: model),
          ),
        );
      },
      child: FadeInAnimation(
        delay: 1.6,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20) +
              const EdgeInsets.only(top: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: getEmotionColorGradient(model.id),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CircleAvatar(
                  radius: 52,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    foregroundImage: AssetImage(model.image),
                    radius: 50,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoSizeText(
                        model.emotion,
                        style: GoogleFonts.lora(
                            fontSize: screenWidth / 20,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                      AutoSizeText(
                        model.emotionTranslation,
                        style: GoogleFonts.lora(
                            fontSize: screenWidth / 22,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                        maxLines: 2,
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }
}
