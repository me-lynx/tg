import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tg/widgets/custom_app_bar.dart';
import 'package:tg/widgets/palete.dart';

class StatsGrid extends StatelessWidget {
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
          _content2(screenHeight),
        ],
      ),
    );
  }

  Expanded _buildStatCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        height: 20.h,
        width: 30.w,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    String? selectedValue;
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Status do Covid-19 em Bauru',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _content(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                _buildStatCard('Total de Casos', '1.81 M', Colors.orange),
                _buildStatCard('Mortes', '105 K', Colors.red),
              ],
            ),
            Row(
              children: <Widget>[
                _buildStatCard('Recuperados', '391 K', Colors.green),
                _buildStatCard('Ativos', '1.31 M', Colors.lightBlue),
                _buildStatCard('Criticos', '333', Colors.purple),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _content2(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                _buildStatCard('Vacinados', '3.4 K', Colors.pink),
                _buildStatCard('Não vacinados', '105 K', Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
