import 'package:flutter/material.dart';

class BMICategory extends StatelessWidget {
  const BMICategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCategoryItem("Underweight", const Color(0xFF87B1D9)),
          _buildCategoryItem("Normal", const Color(0xFF3DD365)),
          _buildCategoryItem("Overweight", const Color(0xFFEEE133)),
          _buildCategoryItem("Obese", const Color(0xFFFD802E)),
          _buildCategoryItem("Extreme", const Color(0xFFF95353)),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String label, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
