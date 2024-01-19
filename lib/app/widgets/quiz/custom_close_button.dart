import 'package:flutter/material.dart';
import 'package:street_talk/app/core/constants/constants.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: kRedColor),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close_rounded,
            color: kYellowColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
