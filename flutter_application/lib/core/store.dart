import 'package:flutter_application/models/cart.dart';
import 'package:flutter_application/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late CataLogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CataLogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
