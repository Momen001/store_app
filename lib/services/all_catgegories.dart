import 'package:store_app/helper/API.dart';

class allprodectcategories {
  Future<List<dynamic>> allcategories() async {
    List<dynamic> data =
        await api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
