import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),

          Filter(),
          //_filter(screenHeight),
          _content(screenHeight),
          _content2(screenHeight),
          _content3(screenHeight),
          _content4(screenHeight),
        ],
      ),
    );
  }
}

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ListVaccinesController());

    String? valueText = "Centro";
    String? valueText2 = "Filtrar por DR ";
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Center(
                    child: Container(
                      height: 50.h,
                      child: AlertDialog(
                        title: Text('Selecione o Filtro'),
                        content: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              height: 9.h,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Color(0xFFE5E5E5),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: DropdownButton(
                                      underline: SizedBox(),
                                      icon: Icon(Icons.arrow_drop_down),
                                      value: valueText2,
                                      items: [
                                        'Filtrar por vacina',
                                        'Filtrar por DR ',
                                        'Filtrar inativos',
                                        'Filtrar ativos',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String? value) {
                                        setState(() {
                                          valueText2 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              height: 9.h,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Color(0xFFE5E5E5),
                                ),
                              ),
                              child: Column(
                                children: [
                                  DropdownButton(
                                    underline: SizedBox(),
                                    icon: Icon(Icons.arrow_drop_down),
                                    value: valueText,
                                    items: [
                                      'Centro',
                                      'Vila Falcão',
                                      'Mary Dota',
                                      'Carolina'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState() {
                                        valueText = value.toString();
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 5.h,
              width: 30.w,
              child: Card(
                color: Palette.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Filtrar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// _filter(double screenHeight) {
//   var controller = Get.put(ListVaccinesController());
//   String? valueText = "Indonesia";
//   return SliverToBoxAdapter(
//     child: Container(
//       margin: EdgeInsets.symmetric(horizontal: 20),
//       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//       height: 60,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(25),
//         border: Border.all(
//           color: Color(0xFFE5E5E5),
//         ),
//       ),
//       child: DropdownButton(
//         isExpanded: true,
//         underline: SizedBox(),
//         icon: Icon(Icons.arrow_drop_down),
//         value: valueText,
//         items: ['Indonesia', 'Bangladesh', 'United States', 'Japan']
//             .map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//         onChanged: (value) {
//           setState() {
//             valueText = value.toString();
//           }
//         },
//       ),
//     ),

//     // child: Padding(
//     //   padding: const EdgeInsets.all(8.0),
//     //   child: TextButton(
//     //     style: TextButton.styleFrom(
//     //         primary: Palette.primaryColor, backgroundColor: Colors.white),
//     //     onPressed: () {
//     //       //Get.to(() => BottomNavScreen());
//     //     },
//     //     child: Row(
//     //       mainAxisAlignment: MainAxisAlignment.center,
//     //       children: [Icon(Icons.filter_alt), Text('Filtrar')],
//     //     ),
//     //   ),
//     // ),
//   );
// }
// //    Icon(Icons.filter_alt),
// //    FILTER

SliverToBoxAdapter _content(double screenHeight) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Expanded(
        child: Container(
          height: 20.h,
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
                    Text('Lote: 1920999'),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Card(
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              ' Coronavac ',
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

SliverToBoxAdapter _content2(double screenHeight) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Expanded(
        child: Container(
          height: 20.h,
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
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              ' Pfizer ',
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
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Validade: 12/12/2022'),
                    SizedBox(),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('DR Responsável: Bauru - Vila Falcão'),
                    SizedBox(),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Card(
                      child: Text(
                        ' ATIVA ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

SliverToBoxAdapter _content3(double screenHeight) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Expanded(
        child: Container(
          height: 20.h,
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
                    Text('Lote: 192349'),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              ' Janssen ',
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
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Validade: 12/11/2022'),
                    SizedBox(),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('DR Responsável: Bauru - Carolina'),
                    SizedBox(),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Card(
                      child: Text(
                        ' ATIVA ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

SliverToBoxAdapter _content4(double screenHeight) {
  return SliverToBoxAdapter(
    child: Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(0),

      // The start action pane is the one at the left or the top side.
      startActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),

        // A pane can dismiss the Slidable.
        dismissible: DismissiblePane(onDismissed: () {}),

        // All actions are defined in the children parameter.
        children: const [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
            onPressed: null,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          SlidableAction(
            onPressed: null,
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.share,
            label: 'Share',
          ),
        ],
      ),

      // The end action pane is the one at the right or the bottom side.
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            // An action can be bigger than the others.
            flex: 2,
            onPressed: null,
            backgroundColor: Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.archive,
            label: 'Archive',
          ),
          SlidableAction(
            onPressed: null,
            backgroundColor: Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.save,
            label: 'Save',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: const ListTile(title: Text('Slide me')),
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
