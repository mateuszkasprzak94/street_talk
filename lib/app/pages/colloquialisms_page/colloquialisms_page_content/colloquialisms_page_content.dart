import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/cubit/colloquialisms_page_cubit.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/agree.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/angry.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/boredom.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/disappointment.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/happy.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/resignation.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/surprised.dart';

class ColloquialismsPageContent extends StatefulWidget {
  const ColloquialismsPageContent({super.key});

  @override
  State<ColloquialismsPageContent> createState() =>
      _ColloquialismsPageContentState();
}

class _ColloquialismsPageContentState extends State<ColloquialismsPageContent> {
  final controllerEmotionsPage = PageController(initialPage: 0);

  @override
  void dispose() {
    controllerEmotionsPage.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => ColloquialismsPageCubit(),
      child: BlocBuilder<ColloquialismsPageCubit, ColloquialismsPageState>(
        builder: (context, state) {
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
            body: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Stack(alignment: Alignment.topCenter, children: [
                PageView(
                  onPageChanged: (index) {
                    state.page = index;
                    context.read<ColloquialismsPageCubit>().changePage();
                  },
                  controller: controllerEmotionsPage,
                  children: const [
                    SurprisedContent(),
                    AngryContent(),
                    AgreeContent(),
                    DisappointmentContent(),
                    HappyContent(),
                    BoredomContent(),
                    ResignationContent(),
                  ],
                ),
                Positioned(
                    child: DotsIndicator(
                  position: state.page.toInt(),
                  dotsCount: 7,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                    color: Colors.grey,
                    activeColor: const Color(0xFFe78d01),
                    size: const Size.square(8),
                    activeSize: const Size(10, 8),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ))
              ]),
            ),
          );
        },
      ),
    );
  }
}
