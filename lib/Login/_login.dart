import 'package:flutter/material.dart';
import 'package:flutter_login_acebook/Login/_login-text.dart';
import '_email-login.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void _logInWithFacebook() async {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LoginText('Food'),
            const SizedBox(height: 5.0),
            const LoginText('Log in'),
            _Button(
              color: Colors.grey,
              image: const AssetImage('assets/images/facebook.png'),
              text: 'Login with Email',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EmailLogin()));
              },
            ),
            _Button(
              color: Colors.blue,
              image: const AssetImage('assets/images/facebook.png'),
              text: 'Login with Facebook',
              onPressed: () {
                _logInWithFacebook();
              },
            )
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final Color color;
  final ImageProvider image;
  final String text;
  final VoidCallback onPressed;

  _Button(
      {required this.color,
      required this.image,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: GestureDetector(
        onTap: () {
          onPressed();
        },
        child: Container(
          height: 55.0,
          decoration: BoxDecoration(
              border: Border.all(color: color),
              borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              const SizedBox(height: 5.0),
              Image(
                image: image,
                width: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text, style: TextStyle(color: color, fontSize: 18)),
                    const SizedBox(width: 35),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
