// ignore_for_file: non_constant_identifier_names, unnecessary_type_check
import 'package:flutter/material.dart';
import 'widgets/bmi_inputs.dart';
import 'widgets/bmi_result.dart';
import 'widgets/bmi_category.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Color myColor = Colors.transparent;
  final weight_Controller = TextEditingController();
  final height_Controller = TextEditingController();
  var bmi_ResultText = TextEditingController();

  calculateBmi(String weight, String height) async {
    double myDouble_weight = double.parse(weight);

    double myDouble_height = (double.parse(height) / 100);

    var bmi_Value = (myDouble_weight / (myDouble_height * myDouble_height));

    setState(() {
      bmi_ResultText.text = bmi_Value.toStringAsFixed(2);
      if (bmi_Value < 18.5) {
        myColor = const Color(0xFF87B1D9);
      } else if (bmi_Value >= 18.5 && bmi_Value <= 24.9) {
        myColor = const Color(0xFF3DD365);
      } else if (bmi_Value >= 25 && bmi_Value <= 29.9) {
        myColor = const Color(0xFFEEE133);
      } else if (bmi_Value >= 30 && bmi_Value <= 34.9) {
        myColor = const Color(0xFFFD802E);
      } else if (bmi_Value >= 35) {
        myColor = const Color(0xFFF95353);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: height,
            decoration: const BoxDecoration(color: Colors.grey),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      "BMI Calculator",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0038FF),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: BMIInputs(
                      weightController: weight_Controller,
                      heightController: height_Controller,
                      onCalculatePressed: calculateBmi,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: BMIResult(
                      bmiResult: bmi_ResultText.text,
                      myColor: myColor,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: BMICategory(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
