import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tg/home/home_page.dart';
import 'package:tg/widgets/background.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
          BackgroundPage(),
          Scaffold(
            backgroundColor: Colors.transparent,
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
        children: <Widget>[
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Image.asset("images/img_login.jpg"),
                height: 300,
                width: 300,
              ),
              // Text(
              //   "BEM VINDO!",
              //   style: TextStyle(
              //     fontSize: 30.sp,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black,
              //   ),
              //   textAlign: TextAlign.start,
              // ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          TextField(),
          TextField(),
          SizedBox(
            height: 10.h,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFF3383CD)),
            ),
            onPressed: () {
              Get.to(() => HomePage());
            },
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
