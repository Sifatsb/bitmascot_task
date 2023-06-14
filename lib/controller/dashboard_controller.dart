import 'dart:convert';

import 'package:bitmascot_task/configure/app_widgets.dart';
import 'package:bitmascot_task/model/movie_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DashBoardController extends GetxController {
  RxInt currentPage = 1.obs;
  RxString movieUrl = ''.obs;
  int perPage = 10;

  RxList<MovieResponseModel> data = <MovieResponseModel>[].obs;


  Future<void> fetchData() async {

    try{

      String uri =
          'https://jsonplaceholder.typicode.com/photos?_page=$currentPage&_limit=$perPage';

      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.body);
        List<MovieResponseModel> movies = jsonResponse
            .map((item) => MovieResponseModel.fromJson(item))
            .toList();
        data.addAll(movies);
      } else{
        AppWidgets().wrongSnackBar('Error To Load Data');
      }

    } catch(e, t){
      debugPrint('$e');
      debugPrint('$t');
    }

  }

}
