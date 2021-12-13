import 'package:flutter/material.dart';
import 'package:online_groceries_app_ui/custom/custom.dart';
import 'package:online_groceries_app_ui/model/product_model.dart';
import 'package:online_groceries_app_ui/screen/product_details.dart';

class CategoryProductScreen extends StatelessWidget {
  final String? title;
  const CategoryProductScreen({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            title!,
            style: const TextStyle(
              fontSize: 24.0,
              color: Colors.black,
              letterSpacing: 1.4,
            ),
          ),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true),
      body: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: GridView.builder(
            itemCount: exclusiveProduct.length,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.85,
              crossAxisSpacing: 10.0,
            ),
            itemBuilder: (context, position) {
              Product item = exclusiveProduct[position];
              return InkWell(
                onTap: () => goToNext(
                    context,
                    ProductDetails(
                        image: item.image,
                        title: item.name,
                        price: item.price)),
                child: Container(
                  width: double.infinity / 2.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150.0,
                        width: 150.0,
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(item.image)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            item.name,
                            style: defaultTextStyle(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
