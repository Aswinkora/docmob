import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  final String label;
  TextEditingController controller;
  final IconData icons;
  Textform({
    super.key,
    required this.icons,
    required this.label,
    required this.controller, required Color colors, required Color Colors,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 15),
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: Icon(
            icons,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Color(0xFF959595)),
              borderRadius: BorderRadius.circular(
                15,
              )),
          label: Text(
            label,
            style: TextStyle(color:Color(0xFF959595)),
          )),
    );
  }
}
