import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ListVaccinesController extends GetxController {
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  var selectedValue = ''.obs;
}
