import 'package:flutter/material.dart';

class buildTextField extends StatelessWidget {

  final String label;
  final String prefix;
  final TextEditingController c;

  buildTextField({this.label, this.prefix, this.c});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: c,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.amber),
        border: OutlineInputBorder(),
        prefixText: prefix,
      ),
      style: TextStyle(
        color: Colors.amber,
        fontSize: 18.0,
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
    );
  }

}
