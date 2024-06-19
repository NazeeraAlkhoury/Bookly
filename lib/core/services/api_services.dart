// ignore_for_file: unused_field

import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiServices(this._dio);

  Future getData({
    required String endPoint,
  }) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
//newest
//'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science'
//bboks
//volumes?Filtering=free-ebooks&q=subject:Programming
//similer
//volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming