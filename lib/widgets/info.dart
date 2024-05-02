import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyInfoWidget extends StatelessWidget {
  const MyInfoWidget({
    super.key,
  });

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
                child: Text('My Info'),
              ),
            ),
            const Row(
              children: [
                Option(name: "Chandigarh University", icon: Icons.school),
                Option(name: "5'2\"", icon: Icons.scale),
              ],
            ),
            const Row(
              children: [
                Option(name: "Fashion esigner", icon: Icons.business),
                Option(name: "Muslim", icon: Icons.handshake),
              ],
            ),
            const Row(
              children: [
                Option(name: "Socially", icon: Icons.brush),
                Option(name: "Frequently", icon: Icons.handyman),
                Option(name: "No", icon: Icons.fire_extinguisher),
              ],
            ),
            const Row(
              children: [
                Option(name: "Have & don't want more", icon: Icons.food_bank),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  const Option({super.key, required this.name, required this.icon});

  final String name;
  final IconData icon;

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
              Icon(icon, color: Colors.orange),
              const SizedBox(width: 8),
              Text(name, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
