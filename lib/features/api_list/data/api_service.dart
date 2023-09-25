import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:task_two/features/api_list/data/constants.dart';
import 'package:task_two/features/api_list/data/models/product_model.dart';

//-------------------------------------------------------------------------//

class ApiService {
  Future<List<ProductData>> getData() async {
    List<ProductData> dataA = [];
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        for (var item in responseData['products']) {
          dataA.add(ProductData.fromJson(item));
        }
      }
    } catch (e) {
      log(e.toString());
    }
    return dataA;
  }
}
