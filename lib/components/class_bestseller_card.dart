import 'package:flutter/material.dart';
import 'package:stores/components/class_scroll_container.dart';

class BestsellerCard extends StatelessWidget {
  const BestsellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 404,
            width: double.infinity,
            child: GridView.builder(
              shrinkWrap: true,
              primary: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.652,
              ),
              itemBuilder: (BuildContext context, int index) {
                return const ScrollContainer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
