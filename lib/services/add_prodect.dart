import 'package:store_app/helper/API.dart';
import 'package:store_app/models/prodect_model.dart';

class AddProduct {
  Future<prodectModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await api().post(
        url: 'https://fakestoreapi.com/products',
        body: {
          'title': title,
          'price': price,
          'description': desc,
          'image': image,
          'category': category,
        },
        token: '');

    return prodectModel.fromjson(data);
  }
}
