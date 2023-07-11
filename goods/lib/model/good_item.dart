import 'package:goods/goods.dart';

class GoodItem {
  final num? id;
  final num? categoryId;
  final String? name;
  final String? barcode;
  final num? sellPrice;
  final num? stock;
  final List<Item>? items;

  GoodItem({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.barcode,
    required this.sellPrice,
    required this.stock,
    required this.items,
  });
}

class Item {
  final num? id;
  final String? title;
  final List<Attribute>? attrs;

  Item({required this.id, required this.title, required this.attrs});
}

class Attribute {
  final num? attrId;
  final String? title;
  final num? price;

  Attribute({required this.attrId, required this.title, required this.price});
}

List<GoodItem> createGoodFromData(
    List<GoodCategoryItem> res,
    List<GoodExtAttrItem> data2,
    List<ExtAttrValueItem> data3,
    List<GoodCustomAttrItem> data4) {
  List<GoodItem> listGood = [];
  for (GoodCategoryItem a in res) {
    final goodId = a.good!.id;
    final categoryId = a.category!.id;
    final goodName = a.good!.name;
    final goodBarcode = a.good!.barcode;
    final sellPrice = data4
        .firstWhere(
            (item) => item.targetId == goodId && item.key == "sellPrice")
        .value;
    final stock = data4
        .firstWhere((item) => item.targetId == goodId && item.key == "stock")
        .value;
    List<Item> items = [];
    for (GoodExtAttrItem item in data2) {
      if (item.targetId == goodId) {
        final itemId = item.id;
        final itemTitle = item.key!.title;
        List<Attribute> attrs = [];
        for (ExtAttrValueItem attr in data3) {
          if (attr.keyId == itemId) {
            final attrId = attr.id;
            final attrTitle = attr.title;
            final attrPrice = attr.value;
            attrs.add(
                Attribute(attrId: attrId, title: attrTitle, price: attrPrice));
          }
        }
        items.add(Item(id: itemId, title: itemTitle, attrs: attrs));
      }
    }
    listGood.add(GoodItem(
      id: goodId,
      categoryId: categoryId,
      name: goodName,
      barcode: goodBarcode,
      sellPrice: sellPrice,
      stock: stock,
      items: items,
    ));
  }
  return listGood;
}
