import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task_two/data/constants.dart';
import 'package:task_two/data/models/product_model.dart';

//-------------------------------------------------------------------------//

class ApiService {
  Future<List<ProductData>> getData() async {
    List<ProductData> dataA = [];
    var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      for (var item in responseData['products']) {
        dataA.add(ProductData.fromJson(item));
      }
    }
    return dataA;
  }
}
