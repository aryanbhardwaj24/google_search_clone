import 'package:flutter/foundation.dart';
import 'package:google_search_clone/config/api_json.dart';
import 'package:google_search_clone/config/api_keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = '0'}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains(' ')
            ? queryTerm.split(' ').join('+')
            : queryTerm;

        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );

        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }

    return apiResponse;
  }
}
