import 'package:flutter/material.dart';

class MyChat extends StatelessWidget {
  final String text;
  final String time;

  const MyChat({
    Key? key,
    required this.text,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            time,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: const Color(0xFFfeec34),
              ),
              child: Text(text),
            ),
          ),
        ],
      ),
    );
  }
}
