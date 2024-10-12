import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final icon;
  final text;
  final ontap;
  final textcolor;
  final iconcolor;
  const DrawerTile(
      {super.key,
      this.icon,
      this.text,
      this.ontap,
      this.textcolor,
      this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 50,
      leading: Icon(
        icon,
        color: iconcolor ?? Colors.black54,
        size: 25,
      ),
      title: Text(
        text,
        style: TextStyle(
            fontSize: 14, color: textcolor, fontWeight: FontWeight.w400),
      ),
      onTap: ontap,
    );
  }
}
