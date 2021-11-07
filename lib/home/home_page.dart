import 'package:flutter/material.dart';
import 'package:tg/widgets/background.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          BackgroundPage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: _login(),
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
              Center(
                child: Text(
                  DateTime.now().toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Center(
            child: Text('Vacinas disponíveis'),
          ),
          SizedBox(
            height: 1.h,
          ),
          Center(
            child: Container(
              height: 10.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    child: Column(
                      children: [
                        Text('Pfizer'),
                        Text('12'),
                        Icon(
                          Icons.medication_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text('AstraZeneca'),
                        Text('12'),
                        Icon(
                          Icons.medication_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text('Sputnik'),
                        Text('12'),
                        Icon(
                          Icons.medication_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text('Johnson & Johnson'),
                        Text('12'),
                        Icon(
                          Icons.medication_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text('CoronaVac'),
                        Text('12'),
                        Icon(
                          Icons.medication_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 6.h,
          ),

          // Column(
          //   children: <Widget>[
          //     SizedBox(
          //       height: 8.h,
          //       child: Card(
          //         elevation: 3,
          //         child: Row(
          //           children: [
          //             Icon(Icons.account_box),
          //             Text('23232323'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 1.h,
          //     ),
          //     SizedBox(
          //       height: 8.h,
          //       child: Card(
          //         elevation: 3,
          //         child: Row(
          //           children: [
          //             Icon(Icons.account_box),
          //             Text('23232323'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 1.h,
          //     ),
          //     SizedBox(
          //       height: 8.h,
          //       child: Card(
          //         elevation: 3,
          //         child: Row(
          //           children: [
          //             Icon(Icons.account_box),
          //             Text('23232323'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 1.h,
          //     ),
          //     SizedBox(
          //       height: 8.h,
          //       child: Card(
          //         elevation: 3,
          //         child: Row(
          //           children: [
          //             Icon(Icons.account_box),
          //             Text('23232323'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 1.h,
          //     ),
        ],
      ),
    );
  }
}
