class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final product = [
  Item(
      id: "1",
      name: "Monjur",
      desc: "Desc",
      price: 10,
      color: "#w553aw",
      image:
          "https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/271663650_1861993377329045_3242685672209931574_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Kasni0hJ7pYAX9gzlf-&_nc_ht=scontent.fdac14-1.fna&oh=00_AT-R-HmGyHxxMeUZVa1PaJ7E5_zFA1y0Xfpx3lYhl0wv8w&oe=61EB4941")
];
