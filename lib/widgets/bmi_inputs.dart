// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class BMIInputs extends StatelessWidget {
  final TextEditingController weightController;
  final TextEditingController heightController;
  final Function(String, String) onCalculatePressed;

  const BMIInputs({
    Key? key,
    required this.weightController,
    required this.heightController,
    required this.onCalculatePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: TextField(
            controller: weightController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            style: const TextStyle(fontSize: 18, color: Colors.black),
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your weight (kg)",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: TextField(
            controller: heightController,
            autofocus: false,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            style: const TextStyle(fontSize: 18, color: Colors.black),
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your height (cm)",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                onCalculatePressed(
                    weightController.text, heightController.text);
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF0038FF)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              child: const Text(
                "Calculate",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
