import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  final String text;
  const LoginText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 25.0,
          fontWeight: FontWeight.w600),
    );
  }
}
