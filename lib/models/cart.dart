import 'package:tutorial_flutter/models/catalog.dart';

class CartModel {
  late CatalogModel _catalog;

  // ignore: unused_field
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // ignore: non_constant_identifier_names
  void Add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
