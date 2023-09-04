import 'package:flutter/material.dart';

class BrowseCard extends StatelessWidget {
  const BrowseCard({
    Key? key, required this.title, required this.color1,
  }) : super(key: key);
  final String title;
  final String color1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 2.25,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: hexToColor(color1)
      ),
      child: Text(title, style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Gotham',
          fontSize: 16,
          fontWeight: FontWeight.w700
      )),
    );
  }
}
Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xFF000000 : 0x00000000));
}