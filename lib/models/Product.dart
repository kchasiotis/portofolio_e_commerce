class Product {
  final String label;
  final String brandName;
  final String description;
  final int price;
  final int? discountPrice;
  final String image;
  final int reviewsNumber;

  Product(
      {required this.label,
      required this.brandName,
      required this.description,
      required this.price,
      this.discountPrice,
      required this.image,
      required this.reviewsNumber});
}
