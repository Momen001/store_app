class prodectModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final ratingModel rating;

  prodectModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.rating,
  });

  factory prodectModel.fromjson(jsondata) {
    return prodectModel(
        id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        category: jsondata['category'],
        rating: jsondata['rating']);
  }
}

class ratingModel {
  final double rate;
  final int count;

  ratingModel({required this.rate, required this.count});

  factory ratingModel.fromjson(jsondata) {
    return ratingModel(rate: jsondata['rate'], count: jsondata['count']);
  }
}
