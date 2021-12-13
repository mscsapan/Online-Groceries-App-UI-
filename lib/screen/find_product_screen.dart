import 'package:flutter/material.dart';
import 'package:online_groceries_app_ui/custom/custom.dart';
import 'package:online_groceries_app_ui/model/product_model.dart';

import 'category_product_screen.dart';

class FindProductScreen extends StatelessWidget {
  const FindProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Find Product',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
              letterSpacing: 1.4,
            ),
          ),
          centerTitle: true),
      body: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextField(
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                hintText: 'Find Product',
                prefixIcon: Icon(Icons.search,
                    color: Colors.black.withOpacity(0.5), size: 26.0),
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
              ),
            ),
            const SizedBox(height: 15.0),
            Flexible(
              child: GridView.builder(
                  itemCount: 9,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 10.0,
                  ),
                  itemBuilder: (context, position) {
                    CategoryItem item = items[position];
                    return InkWell(
                      onTap: () => goToNext(
                          context, CategoryProductScreen(title: item.name)),
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
                                  child: Image.asset(
                                      'assets/item/${position + 1}.png')),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
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
          ],
        ),
      ),
    );
  }
}
