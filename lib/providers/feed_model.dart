import 'package:feedpage/models/products_model.dart';
import 'package:flutter/widgets.dart';

class FeedModel extends ChangeNotifier {
  List<ProductModel> products = [
    ProductModel(
        name: 'Mens Top Black',
        description: 'White and black colours available',
        image:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
        price: 340.00),
    ProductModel(
        name: 'Gucci Sandals',
        description: 'White and black colours available',
        image:
            'https://images.unsplash.com/photo-1555529669-2269763671c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
        price: 340.00),
    ProductModel(
        name: 'Television Set',
        description: 'White and black colours available',
        image:
            'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        price: 340.00),
    ProductModel(
        name: 'Polo Shirt',
        description: 'White and black colours available',
        image:
            'https://images.unsplash.com/photo-1526470498-9ae73c665de8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
        price: 340.00),
    ProductModel(
        name: 'Polo Shirt',
        description: 'White and black colours available',
        image:
            'https://images.unsplash.com/photo-1526470498-9ae73c665de8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
        price: 340.00),
    ProductModel(
        name: 'Polo Shirt',
        description: 'White and black colours available',
        image:
            'https://images.unsplash.com/photo-1526470498-9ae73c665de8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
        price: 340.00),
  ];
  notifyListeners();
}
