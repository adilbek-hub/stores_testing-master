import 'package:flutter/material.dart';

List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
  'Item 6',
  'Item 7',
  'Item 8',
  'Item 9',
  'Item 10'
];

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 110,
          width: 250,
          child: RotatedBox(
            quarterTurns: 3,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (BuildContext context, int index) {
                  return Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.blue : Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  );
                },
                childCount: items.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
