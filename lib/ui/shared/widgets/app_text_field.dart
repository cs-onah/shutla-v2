import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final Widget field;
  const AppTextField({super.key, required this.field, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 8),
        field,
      ],
    );
  }
}
