import 'package:flutter/material.dart';

class LabeledImageTextField extends StatelessWidget {
  final String imagePath;
  final String labelText;
  final String hintText;
  final TextEditingController controller;

  const LabeledImageTextField({
    Key? key,
    required this.imagePath,
    required this.labelText,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 8),
            Text(
              labelText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8)
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
