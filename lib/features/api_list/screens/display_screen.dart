import 'package:flutter/material.dart';
import 'package:task_two/features/api_list/data/models/product_model.dart';
import 'package:task_two/features/api_list/widgets/app_bars.dart';
import 'package:task_two/features/api_list/widgets/product_display.dart';

//-------------------------------------------------------------------------//

class DisplayScreen extends StatelessWidget {
  final ProductData product;

  const DisplayScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const MainAppBar(
        barText: 'Display Product',
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          // color: Colors.grey.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainImage(imageUrl: product.thumbnail),
              ProductTitle(title: product.title),
              const SizedBox(height: 20),
              ProductPrice(price: product.price),
              const SizedBox(height: 20),
              ProductInfo(product: product),
              const SizedBox(
                width: 200,
                height: 30,
                child: Divider(
                  thickness: 4,
                  height: 1, // Set the height of the divider (thickness)
                  color: Colors.black, // Set the color of the divider
                ),
              ),
              ProductImages(images: product.images,)
            ],
          ),
        ),
      ),
    ));
  }
}
