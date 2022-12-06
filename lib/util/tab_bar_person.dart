import 'package:flutter/material.dart';

class TabBarPerson extends StatelessWidget {
  const TabBarPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.purple[100],
          ),
        );
      },
    );
  }
}
