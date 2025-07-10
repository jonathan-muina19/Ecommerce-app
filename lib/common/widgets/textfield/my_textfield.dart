import 'package:flutter/material.dart';

class MyTextfieldWidget extends StatelessWidget {
  final String hintText;
  final controller;
  const MyTextfieldWidget({super.key, required this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText
      ),
    );
  }
}
