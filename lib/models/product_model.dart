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

List<ProductModel> productItem = [
  ProductModel(
      imagePath:
          'assets/images/c7d2674006d4e14181d44a5ffd4a714b-removebg-preview 1 (1).png',
      productName: 'Minimalist Chair',
      categoryName: '',
      price: 'price',
      productImages: []),
  ProductModel(
      imagePath: 'imagePath',
      productName: 'productName',
      categoryName: 'categoryName',
      price: 'price',
      productImages: []),
  ProductModel(
      imagePath: 'imagePath',
      productName: 'productName',
      categoryName: 'categoryName',
      price: 'price',
      productImages: ['productImages']),
];
