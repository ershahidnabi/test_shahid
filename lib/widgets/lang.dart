import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLang extends StatelessWidget {
  const MyLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        // color: Colors.grey[200],
        decoration: BoxDecoration(
            color: Colors.pink[100], borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Languages'),
              ),
            ),
            const Row(
              children: [
                Languages(langs: "English"),
                Languages(langs: "Hindi"),
                Languages(langs: "Urdu"),
                Languages(langs: "Punjabi"),
              ],
            ),
            const Row(
              children: [
                Languages(langs: "Dutch"),
                Languages(langs: "Spanisg"),
                Languages(langs: "Arabiuc"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Languages extends StatelessWidget {
  const Languages({
    super.key,
    required this.langs,
  });

  final String langs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber[50], borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              const SizedBox(width: 8),
              Text(langs, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
