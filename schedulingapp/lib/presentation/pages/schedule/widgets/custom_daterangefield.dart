import 'package:flutter/material.dart';

class LabelImageTextField extends StatelessWidget {
  final String imagePath1;  // First image (prefixIcon)
  final String imagePath2;  // Second image (prefixIcon)
  final TextEditingController controller;
  final String hintText1;   // Main hint inside the TextField
  final String hintText2;   // Extra inline hint

  const LabelImageTextField({
    super.key,
    required this.imagePath1,
    required this.imagePath2,
    required this.controller,
    required this.hintText1,
    required this.hintText2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText1, // Main hint inside the text field
            hintStyle: TextStyle(color: Colors.grey[500]), // hintText color adjustment
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath1, height: 20, width: 20),
            ),
            prefixIconConstraints: BoxConstraints(minWidth: 40), // Ensure the prefix icon space
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath2, height: 20, width: 20),
            ),
            suffixIconConstraints: BoxConstraints(minWidth: 40), // Ensure the suffix icon space
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          hintText2, // Extra hint text (shown below the TextField)
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
