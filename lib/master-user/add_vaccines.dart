import 'package:flutter/material.dart';
import 'package:tg/widgets/custom_app_bar.dart';
import 'package:tg/widgets/palete.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class AddVaccines extends StatefulWidget {
  const AddVaccines({Key? key}) : super(key: key);

  @override
  _AddVaccinesState createState() => _AddVaccinesState();
}

class _AddVaccinesState extends State<AddVaccines> {
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
            'Cadastro de Vacinas',
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

SliverToBoxAdapter _content(double screenHeight) {
  return SliverToBoxAdapter(
    child: Form(child: _columnContent()),
  );
}

Widget _columnContent() {
  return Padding(
    padding: const EdgeInsets.all(25),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [Text('Fabricante')],
        ),
        SizedBox(height: 1.h),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusColor: Colors.white,
              hoverColor: Colors.white,
              hintStyle: TextStyle(color: Colors.white),
              fillColor: Colors.white70),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [Text('Lote')],
        ),
        SizedBox(height: 1.h),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusColor: Colors.white,
              hoverColor: Colors.white,
              hintStyle: TextStyle(color: Colors.white),
              fillColor: Colors.white70),
        ),
        SizedBox(height: 1.h),
        Row(
          children: [Text('Validade')],
        ),
        SizedBox(height: 1.h),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusColor: Colors.white,
              hoverColor: Colors.white,
              hintStyle: TextStyle(color: Colors.white),
              fillColor: Colors.white70),
        ),
        SizedBox(height: 1.h),
        Row(
          children: [Text('DR Responsável')],
        ),
        SizedBox(height: 1.h),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusColor: Colors.white,
              hoverColor: Colors.white,
              hintStyle: TextStyle(color: Colors.white),
              fillColor: Colors.white70),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 6.h,
          width: 90.w,
          child: TextButton(
            style: TextButton.styleFrom(
                primary: Palette.primaryColor,
                backgroundColor: Palette.primaryColor2),
            onPressed: () {},
            child: Text('SALVAR'),
          ),
        ),
      ],
    ),
  );
}
