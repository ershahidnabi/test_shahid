import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.red,
              ),
              SizedBox(width: 6),
              Text('eliza_williams'),
            ],
          ),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.linkedin,
                color: Colors.blue,
              ),
              SizedBox(width: 6),
              Text('eliza_williams'),
            ],
          ),
        ],
      ),
    );
  }
}
