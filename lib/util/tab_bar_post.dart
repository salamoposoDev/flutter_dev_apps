import 'package:flutter/material.dart';

class TabBarPost extends StatelessWidget {
  const TabBarPost({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            color: Colors.green[100],
          ),
        );
      },
    );
  }
}
