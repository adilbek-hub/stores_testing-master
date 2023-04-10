import 'package:flutter/material.dart';

class BottomContainerIcon extends StatelessWidget {
  const BottomContainerIcon(this.icon, {super.key});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 30,
      color: Colors.white,
    );
  }
}
