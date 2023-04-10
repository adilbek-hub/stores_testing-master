import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff474747),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image.asset(image),
    );
  }
}
