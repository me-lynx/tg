import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 252, 255),
        image: DecorationImage(
          image: AssetImage("images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
