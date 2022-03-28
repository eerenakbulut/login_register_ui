import 'package:flutter/material.dart';

import '../constant/constans_page.dart';

class BuildTexfieldWidget extends StatelessWidget {
  const BuildTexfieldWidget({
    required this.name,
    Key? key,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: name,
        hintStyle: TextStyle(color: textColordark),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: textColordark),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: textColordark),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
