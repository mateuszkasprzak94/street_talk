import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/enums.dart';
import 'package:street_talk/app/data/remote_data_sources/emotions_name_remote_data_sorce.dart';
import 'package:street_talk/app/domain/models/emotions_name_model.dart';
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/cubit/emotions_page_cubit.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/emotions_content.dart';

class EmotionsPage extends StatelessWidget {
  const EmotionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
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
                color: Color(0xFFc60b1e),
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
        body: BlocProvider<EmotionsPageCubit>(
          create: (context) {
            return EmotionsPageCubit(
              emotionsNameRepository: EmotionsNameRepository(
                remoteDataSource: EmotionsNameMockedDataSource(),
              ),
            )..start();
          },
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
                  return ListView(
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
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20) +
            const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(4, 8),
            ),
          ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.asset(model.image),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  model.emotion,
                  style: GoogleFonts.lora(fontSize: 25),
                ),
                Text(
                  model.emotionTranslation,
                  style: GoogleFonts.lora(
                      fontSize: screenWidth / 19,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward_ios),
          )
        ]),
      ),
    );
  }
}
