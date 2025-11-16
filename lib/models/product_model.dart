class ProductModel {
  final String imagePath;
  final String productName;
  final String categoryName;
  final String price;
  final List productImages;

  ProductModel(
      {required this.imagePath,
      required this.productName,
      required this.categoryName,
      required this.price,
      required this.productImages});
}
