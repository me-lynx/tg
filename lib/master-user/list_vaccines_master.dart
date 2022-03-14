import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tg/master-user/list_vaccines/list_vaccines_controller.dart';
import 'package:tg/widgets/custom_app_bar.dart';
import 'package:tg/widgets/palete.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListVaccinesMaster extends StatefulWidget {
  const ListVaccinesMaster({Key? key}) : super(key: key);

  @override
  _ListVaccinesMasterState createState() => _ListVaccinesMasterState();
}

class _ListVaccinesMasterState extends State<ListVaccinesMaster> {
  var controller = Get.put(ListVaccinesController());

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
          _content(screenHeight),
          _content(screenHeight),
          _content(screenHeight),
          _content(screenHeight),
          _content(screenHeight),
          // Center(
          //   child: DropdownButtonHideUnderline(
          //     child: DropdownButton2(
          //       hint: Expanded(
          //         child: Text(
          //           'Dr responsável',
          //           style: TextStyle(fontSize: 13, color: Colors.white),
          //         ),
          //       ),
          //       items: controller.items
          //           .map((item) => DropdownMenuItem<String>(
          //                 value: item,
          //                 child: Text(
          //                   item,
          //                   style: const TextStyle(
          //                     fontSize: 13,
          //                   ),
          //                 ),
          //               ))
          //           .toList(),
          //       value: controller.selectedValue,
          //       onChanged: (value) {
          //         // setState(() {
          //         //   selectedValue = value as String;
          //         // });
          //       },
          //       icon: Icon(
          //         Icons.search,
          //         color: Colors.white,
          //       ),
          //       buttonHeight: 40,
          //       buttonWidth: 140,
          //       itemHeight: 40,
          //     ),
          //   ),
          // ),
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
          height: 17.h,
          decoration: BoxDecoration(
            color: Palette.primaryColor2,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lote: 19209'),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Card(
                          child: Text(
                            ' Pfizer ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          color: Palette.primaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Validade: 12/12/2021'),
                    SizedBox(),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('DR Responsável: Bauru - Centro'),
                    SizedBox(),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Card(
                      child: Text(
                        ' INATIVA ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      color: Colors.red),
                ),
              ],
            ),
          ),
        ),
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
                'Estoque de Vacinas',
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
