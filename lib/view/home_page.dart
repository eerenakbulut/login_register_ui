import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/constans_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Home Page",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: textColordark))),
    );
  }
}
