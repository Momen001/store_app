import 'package:store_app/helper/API.dart';
import 'package:store_app/models/prodect_model.dart';

class UpdateProductService {
  Future<prodectModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async {
    print('product id  = $id');
    Map<String, dynamic> data = await api().put(
        url: 'https://fakestoreapi.com/products/$id',
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
