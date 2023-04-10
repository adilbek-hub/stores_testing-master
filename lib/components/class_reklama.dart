import 'package:flutter/material.dart';

class Reklama extends StatelessWidget {
  const Reklama({super.key, required this.sizeWidth, required this.sizeHeight});
  final double sizeWidth;
  final double sizeHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            width: sizeWidth,
            height: sizeHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
