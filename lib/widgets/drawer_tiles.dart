import 'package:flutter/material.dart';

class DrawerTiles extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  DrawerTiles({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Color.fromARGB(255, 4, 87, 22)),
      title: Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 4, 87, 22),
        ),
      ),
      onTap: onTap(),
    );
  }
}
