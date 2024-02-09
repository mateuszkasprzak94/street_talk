import 'package:flutter/material.dart';
import 'package:street_talk/app/core/constants/constants.dart';

class CustomPopButton extends StatelessWidget {
  const CustomPopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 0.15 * MediaQuery.of(context).size.width,
        height: 0.07 * MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: kRedGradient),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 3),
              blurRadius: 0.6,
              color: Colors.grey.withOpacity(0.8),
            ),
          ],
        ),
        child: Icon(
          Icons.exit_to_app,
          color: Colors.white.withOpacity(0.8),
          size: 35,
        ),
      ),
    );
  }
}
