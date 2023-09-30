import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:project/project.dart' as project;
import 'package:test/test.dart';

void main() async {
  Dio client = Dio();
  var response = await client.get("https://dummyjson.com/products");
  Map<String, dynamic> data = response.data;
  List<dynamic> products = data["products"];
  List<int> stocks = [];
  for (dynamic i in products) {
    int stock = i["stock"];
    stocks.add(stock);
  }
  print(sum(stocks));
}

int sum(List<int> L) {
  int result = 0;
  for (int i in L) {
    result += i;
  }
  return result;
}
