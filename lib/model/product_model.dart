class ProductModel {
  final String itemName;
  final String imageUrl;
  final String brandName;
  final String type;
  final String quantity;
  final String shelfLife;
  final bool organic;
  final String flavor;
  final double rating;
  final int ratingCount;
  final double rate;
  final int discount;
  const ProductModel({
    required this.itemName,
    required this.imageUrl,
    required this.brandName,
    required this.type,
    required this.quantity,
    required this.shelfLife,
    required this.organic,
    required this.flavor,
    required this.rating,
    required this.ratingCount,
    required this.rate,
    required this.discount,
  });
}
