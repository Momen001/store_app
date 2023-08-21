import 'package:store_app/helper/API.dart';

import '../models/prodect_model.dart';

class getcategory {
  Future<List<prodectModel>> getcategories(
      {required String categoryname}) async {
    List<dynamic> data = await api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryname');

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
