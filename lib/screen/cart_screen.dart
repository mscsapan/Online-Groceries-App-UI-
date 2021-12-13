import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_groceries_app_ui/model/product_model.dart';

class CartScreen extends StatelessWidget {
  final ValueSetter<Product>? receiveProduct;

  const CartScreen({Key? key, this.receiveProduct}) : super(key: key);
  //const CartScreen({this.receiveProduct});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: exclusiveProduct.length,
          itemBuilder: (context, index) {
            Product pro = exclusiveProduct[index];
            return ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage(
                pro.image,
              )),
              title: Text(pro.name),
              trailing: IconButton(
                  onPressed: () {
                    exclusiveProduct.removeAt(index);
                  },
                  icon: const Icon(FontAwesomeIcons.times)),
            );
          }),
    );
  }
}
