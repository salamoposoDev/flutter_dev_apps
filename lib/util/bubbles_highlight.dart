import 'package:flutter/material.dart';

class HighlighsStory extends StatelessWidget {
  final String text;

  HighlighsStory({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 8),
          Text(text),
        ],
      ),
    );
  }
}
