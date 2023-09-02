class prodectModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final ratingModel? rating;
  final String image;

  prodectModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.rating,
      required this.image});

  factory prodectModel.fromjson(jsondata) {
    return prodectModel(
        id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        category: jsondata['category'],
        image: jsondata['image'],
        rating: jsondata['rating'] == null
            ? null
            : ratingModel.fromjson(jsondata['rating']));
  }
}

class ratingModel {
  final dynamic rate;
  final int count;

  ratingModel({required this.rate, required this.count});

  factory ratingModel.fromjson(jsondata) {
    return ratingModel(rate: jsondata['rate'], count: jsondata['count']);
  }
}
