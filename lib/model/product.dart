class Product {
  final String urlImage;
  final String title;
  final String subTitle;
  final double price;
  Product(
      {required this.urlImage, required this.title, required this.subTitle,required this.price,});
}

List<Product> products = [
  Product(
      urlImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPm72u2K9SEsc6D9GV7cGYYI454iVHHzbXDQ&usqp=CAU",
      title: "Fresh Basils 1",
      subTitle: "50 \$/50gram", price: 50),
  Product(
      urlImage:
      "https://img.freepik.com/premium-photo/dragon-fruit-isolated-white-space_116067-372.jpg?w=900",
      title: "Fresh Basils 2",
      subTitle: "60 \$/50gram", price: 60),
  Product(
      urlImage:
      "https://img.freepik.com/premium-photo/dragon-fruit-isolated-white-space_116067-372.jpg?w=900",
      title: "Fresh Basils 3",
      subTitle: "70 \$/50gram", price: 70),
  Product(
      urlImage:
      "https://img.freepik.com/premium-photo/cherry-tomatoes-isolated-white_116067-459.jpg?size=626&ext=jpg",
      title: "Fresh Basils 4",
      subTitle: "80 \$/50gram", price: 80),
];
