import 'package:flutter/material.dart';

class ProductsAppleContainers extends StatelessWidget {
  const ProductsAppleContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 160,
        width: double.infinity,
        child: RotatedBox(
          quarterTurns: 3,
          child: ListWheelScrollView(
            scrollBehavior: MaterialScrollBehavior(),
            itemExtent: 307,
            children: List.generate(
              6,
              (index) => Container(
                height: 152,
                width: 307,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.1, 0.1),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
