import 'dart:convert';

import '../models/prodect_model.dart';
import 'package:http/http.dart' as http;

class allprodectservice {
  Future<List<prodectModel>> getallprodect() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    List<dynamic> data = jsonDecode(response.body);

    List<prodectModel> prodectlist = [];

    for (int i = 0; i < data.length; i++)
      (
        prodectlist.add(
          prodectModel.fromjson(data[i]),
        ),
      );
    return prodectlist;
  }
}
