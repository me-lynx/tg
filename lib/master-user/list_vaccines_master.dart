import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tg/widgets/custom_app_bar.dart';
import 'package:tg/widgets/palete.dart';

class ListVaccinesMaster extends StatefulWidget {
  const ListVaccinesMaster({Key? key}) : super(key: key);

  @override
  _ListVaccinesMasterState createState() => _ListVaccinesMasterState();
}

class _ListVaccinesMasterState extends State<ListVaccinesMaster> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _content(screenHeight),
          // _buildYourOwnTest(screenHeight),
          // _buildYourOwnTest2(screenHeight),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _content(double screenHeight) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Palette.primaryColor2,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              'Pfizer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          color: Palette.primaryColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

SliverToBoxAdapter _buildHeader(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Palette.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Estoque de Vacinas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
