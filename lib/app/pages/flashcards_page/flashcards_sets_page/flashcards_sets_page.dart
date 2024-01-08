// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:street_talk/app/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/set_one.dart';

// class FlashCardsSetPage extends StatelessWidget {
//   const FlashCardsSetPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 10),
//             child: CircleAvatar(
//               radius: 30,
//               foregroundImage: AssetImage('assets/images/logo.jpg'),
//             ),
//           )
//         ],
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(70),
//           child: Container(
//             height: 60,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               color: Color(0xFFc60b1e),
//             ),
//             child: Center(
//               child: Text(
//                 'Zestaw Fiszek',
//                 style: GoogleFonts.bebasNeue(
//                     letterSpacing: 2,
//                     color: Colors.white,
//                     fontSize: screenWidth / 12),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 20),
//             FloatingActionButton.large(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (_) => const FlashCardsSetOne(),
//                   ),
//                 );
//               },
//               backgroundColor: const Color(0xFFc60b1e),
//               child: const Text(
//                 'Zestaw 1',
//                 style: TextStyle(color: Color(0xfffebf00)),
//               ),
//             ),
//             const SizedBox(height: 20),
//             FloatingActionButton.large(
//               onPressed: () {},
//               backgroundColor: const Color(0xFFc60b1e),
//               child: const Text(
//                 'Zestaw 2',
//                 style: TextStyle(color: Color(0xfffebf00)),
//               ),
//             ),
//             const SizedBox(height: 20),
//             FloatingActionButton.large(
//               onPressed: () {},
//               backgroundColor: const Color(0xFFc60b1e),
//               child: const Text(
//                 'Zestaw 3',
//                 style: TextStyle(color: Color(0xfffebf00)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
