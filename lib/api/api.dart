import 'package:http/http.dart' as http;
import 'package:tg/model/vaccines.dart';

class Api {
  sendVaccine(Vaccines vaccines) async {
    var url = Uri.parse('https://covidlog-api.azurewebsites.net');
    var response = await http.post(url, body: {vaccines.toJson()});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return response.statusCode;
  }
}
