import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/constans_page.dart';
import 'package:login_register_ui/core/context_extension.dart';
import 'package:login_register_ui/view/home_page.dart';
import 'package:login_register_ui/view/login_page.dart';

import '../widgets/build_text_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(flex: 12),
            Expanded(
              flex: 8,
              child: Padding(
                padding: context.horizontalPaddingLow,
                child: buildSignInMethod(context),
              ),
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: context.horizontalPaddingLow,
                  child: BuildTexfieldWidget(
                    name: 'Name',
                  ),
                )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: context.horizontalPaddingLow,
                  child: BuildTexfieldWidget(
                    name: 'User Name',
                  ),
                )),
            Expanded(
              flex: 5,
              child: Padding(
                padding: context.horizontalPaddingLow,
                child: BuildTexfieldWidget(
                  name: 'Password',
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: context.horizontalPaddingLow,
                child: buildForgotRowMethod(context),
              ),
            ),
            Spacer(
              flex: 10,
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: context.horizontalPaddingLarge,
                child: buildRowMethod(context),
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }

  Text buildSignInMethod(BuildContext context) {
    return Text(
      "Sign Up",
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: textColorlight),
    );
  }

  Row buildForgotRowMethod(BuildContext context) {
    return Row(
      children: [
        TextButton(
          child: Text(
            "Forgot Password?",
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: textColordark),
          ),
          onPressed: null,
        ),
        SizedBox(
          width: context.highValue,
        ),
        CircleAvatar(
          backgroundColor: secondaryColor,
          radius: context.normalValue,
          child: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => HomePage())));
            },
            icon: Icon(
              Icons.navigate_next_outlined,
              color: iconColor,
            ),
          ),
        ),
      ],
    );
  }

  Row buildRowMethod(BuildContext context) {
    return Row(
      children: [
        Text(
          "Don't have an account ?",
          style: TextStyle(color: textColordark),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => LoginPage())));
          },
          child: Text("SIGN IN",
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: secondaryColor,
                  )),
        ),
      ],
    );
  }
}
