import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  const Textbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.pink[100],
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the left
          children: [
            SizedBox(height: 3),
            Text("How my school teacher describes me?"),
            SizedBox(height: 10),
            Text(
              "Flutter plugin for reading and writing simple key-value pairs. Wraps NSUserDefaults on iOS and SharedPreferences on Flutter plugin for reading and writing simple key-value pairs. Wraps NSUserDefaults on iOS and SharedPreferences on Flutter plugin for reading and writing simple key-value pairs. Wraps NSUserDefaults on iOS and SharedPreferences on",
            ),
            SizedBox(height: 3),
          ],
        ),
      ),
    );
  }
}
