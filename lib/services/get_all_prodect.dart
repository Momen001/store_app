import 'package:store_app/helper/API.dart';

import '../models/prodect_model.dart';

class allprodectservice {
  Future<List<prodectModel>> getallprodect() async {
    List<dynamic> data =
        await api().get(url: 'https://fakestoreapi.com/products');

    List<prodectModel> prodectlist = [];

    for (int i = 0; i < data.length; i++) {
      prodectlist.add(
        prodectModel.fromjson(data[i]),
      );
    }

    return prodectlist;
  }
}
