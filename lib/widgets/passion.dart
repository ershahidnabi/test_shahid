import 'package:flutter/material.dart';

class MyPassion extends StatelessWidget {
  const MyPassion({
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
                Option(name: "Football", icon: Icons.business),
                Option(name: "Guitar", icon: Icons.girl_outlined),
                Option(name: "Gym", icon: Icons.web),
              ],
            ),
            const Row(
              children: [
                Option(name: "Gym", icon: Icons.sports_hockey),
                Option(name: "Football", icon: Icons.sports_football),
                Option(name: "Basketball", icon: Icons.sports_basketball),
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
