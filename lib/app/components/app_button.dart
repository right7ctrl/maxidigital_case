import 'package:flutter/material.dart';
import 'package:maxidigital_case/app/style_constants.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTap;

  const AppButton({super.key, required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.0,
      width: double.infinity,
      decoration: buttonDecoration,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
        child: Text(buttonText, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  BoxDecoration get buttonDecoration => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [buttonGradientStartColor, buttonGradientEndColor],
          stops: [0, 1],
        ),
      );
}