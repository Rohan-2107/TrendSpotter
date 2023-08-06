import 'package:flutter_application/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartModel {
  // Catalog Feild
  late CataLogModel _catalog;

  // Collection of Ids => Store Ids of Items
  final List<int> _itemIds = [];

  // Get Catalog
  CataLogModel get catalog => _catalog;

  set catalog(CataLogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get Items in Cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutations extends VxMutation<MyStore> {
  final Item item;

  AddMutations(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutations extends VxMutation<MyStore> {
  final Item item;

  RemoveMutations(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}