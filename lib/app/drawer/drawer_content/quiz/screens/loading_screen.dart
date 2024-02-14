// // ignore_for_file: use_build_context_synchronously

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';
// import 'package:street_talk/app/domain/models/quiz_card_details_model.dart';
// import 'package:street_talk/app/domain/repositories/quiz_repository.dart';
// import 'package:street_talk/app/drawer/drawer_content/quiz/screens/question_screen.dart';

// class LoadingScreen extends StatefulWidget {
//   const LoadingScreen({required this.index, super.key});

//   final int index;

//   @override
//   State<LoadingScreen> createState() => _LoadingScreenState();
// }

// class _LoadingScreenState extends State<LoadingScreen> {
//   late QuizRepository quizRepository;

//   @override
//   void initState() {
//     super.initState();

//     SchedulerBinding.instance.addPostFrameCallback((_) {
//       Timer(const Duration(milliseconds: 1000), () {
//         getQuestions();
//       });
//     });
//   }

//   Future<bool> checkConnectivity() async {
//     bool result = true;
//     return result;
//   }

//   void getQuestions() async {
//     bool result = await checkConnectivity();
//     if (result) {
//       Navigator.pop(context);
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: ((context) => QuizQuestionScreen(
//                 categoryIndex: widget.index,
//               )),
//         ),
//       );
//     } else {
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: const Text('Error'),
//           content: const Text('No internet connection. Try again later.'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 Navigator.pop(context);
//               },
//               child: const Text('Ok'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.bottomCenter,
//           end: Alignment.topCenter,
//           colors: quizCardDetailList[widget.index].gradientsColor,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Center(
//           child: LoadingAnimationWidget.fourRotatingDots(
//             color: Colors.white,
//             size: 50,
//           ),
//         ),
//       ),
//     );
//   }
// }
