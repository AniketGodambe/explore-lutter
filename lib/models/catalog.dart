class CatalogModels {
  static final items = [
    Item(
        id: 1,
        name: "iphone 12",
        desc: "12th generation smartPhone",
        price: 999,
        image: "assets/mobile.png")
  ];
}

class Item {
  final int? id;
  final String? name, desc;
  final num? price;
  final String? color, image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
