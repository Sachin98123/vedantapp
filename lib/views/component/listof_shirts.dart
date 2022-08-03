class Products {
  final String image, title;
  final int price;

  Products({required this.image, required this.title, required this.price});
}

List<Products> shirtlist = [
  Products(image: 'assets/images/united.jpg', title: 'United Kit', price: 250),
  Products(
      image: "assets/images/liverpool.jpg", title: 'Liverpool', price: 500),
  Products(image: 'assets/images/united.jpg', title: 'Bruno Kit', price: 100),
  Products(image: 'assets/images/arsenal.jpg', title: 'Netflix', price: 200),
  Products(image: 'assets/images/arsenal.webp', title: 'Arsenal', price: 350),
];
