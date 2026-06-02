import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final String? bmiResult;
  final Color myColor;

  const BMIResult({
    super.key,
    required this.bmiResult,
    required this.myColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Center(
          child: bmiResult != ''
              ? Text(
                  "BMI: $bmiResult",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
