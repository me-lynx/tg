import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tg/widgets/palete.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Palette.primaryColor,
            body: Container(
              child: Form(key: formKey, child: _login()),
            ),
          ),
        ],
      ),
    );
  }

  _login() {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: 4.h,
          ),
          Center(
            child: Column(
              children: [
                Icon(
                  FontAwesomeIcons.boxes,
                  color: Colors.white,
                  size: 40.sp,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'COVIDLOG',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.userAlt,
                size: 16.sp,
                color: Colors.white,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                'Usuário',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusColor: Colors.white,
                hoverColor: Colors.white,
                filled: true,
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white70),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.key,
                size: 16.sp,
                color: Colors.white,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                'Senha',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                focusColor: Colors.white,
                hoverColor: Colors.white,
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white70),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextButton(
            style: TextButton.styleFrom(
                primary: Palette.primaryColor, backgroundColor: Colors.white),
            onPressed: () {},
            child: Text('ENTRAR'),
          ),
        ],
      ),
    );
  }
}
