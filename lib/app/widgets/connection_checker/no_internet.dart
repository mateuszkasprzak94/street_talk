import 'package:flutter/material.dart';
import 'package:street_talk/app/core/constants/constants.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/no_internet.png',
            height: 150,
            color: kRedSecondary,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: const Text(
              'Brak połączenia z internetem',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              'Sprawdź połączenie i spróbuj ponownie',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    ));
  }
}
