import 'package:flutter/material.dart';
import 'package:tg/data/data.dart';
import 'package:tg/widgets/custom_app_bar.dart';
import 'package:tg/widgets/palete.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashboardMaterUser extends StatefulWidget {
  const DashboardMaterUser({Key? key}) : super(key: key);

  @override
  _DashboardMaterUserState createState() => _DashboardMaterUserState();
}

class _DashboardMaterUserState extends State<DashboardMaterUser> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          _buildYourOwnTest(screenHeight),
          _buildYourOwnTest2(screenHeight),
        ],
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // CountryDropdown(
                //   countries: ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'],
                //   country: _country,
                //   onChanged: (val) => setState(() => _country = val),
                // ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Bem vindo, José!',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Dicas de prevenção',
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: prevention
                .map((e) => Column(
                      children: <Widget>[
                        Image.asset(
                          e.keys.first,
                          height: screenHeight * 0.12,
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Text(
                          e.values.first,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      padding: const EdgeInsets.all(10.0),
      height: screenHeight * 0.15,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFAD9FE4), Palette.primaryColor],
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  ' Profissional da saúde, \nA vacinação salva vidas!',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                ' Siga as instruções das bulas',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                maxLines: 2,
              ),
            ],
          )
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildYourOwnTest2(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      padding: const EdgeInsets.all(10.0),
      height: screenHeight * 0.15,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFAD9FE4), Palette.primaryColor],
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  ' Ajude a divulgar a terceira dose\n da vacina contra o Coronavirus',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
            ],
          )
        ],
      ),
    ),
  );
}
