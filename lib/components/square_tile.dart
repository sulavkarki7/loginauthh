import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        imagePath,
        height: Get.height * 0.06,
      ),
    );
  }
}
