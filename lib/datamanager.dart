import 'package:coffee_masters/datamodel.dart';

class DataManager {
  List<Category>? _menu;
  List<ItemInCart> cart = [];

  cartAdd(Product product) {
    bool found = false;

    for (var item in cart) {
      if (item.product.id == product.id) {
        item.quantity++;
        found = true;
      }

      if (!found) {
        cart.add(ItemInCart(product: product, quantity: 1));
      }
    }
  }

  cartRemove(Product product) {
    cart.removeWhere((item) => item.product.id == product.id);
  }

  cartClear() {
    cart.clear();
  }

  double cartTotal() {
    // var total = 0.0;
    double total = 0;

    for (var item in cart) {
      total += item.product.price * item.quantity;
    }

    return total;
  }
}
