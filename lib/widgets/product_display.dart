import 'package:flutter/material.dart';
import 'package:task_two/data/models/product_model.dart';

//-------------------------------------------------------------------------//

// Widget to display the Product Main Image
class MainImage extends StatelessWidget {
  final String imageUrl;

  const MainImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            imageUrl,
            fit: BoxFit.contain,
          ),
        ));
  }
}

// Widget to display the Product Title
class ProductTitle extends StatelessWidget {
  final String title;

  const ProductTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 36,
        fontFamily: 'Righteous',
      ),
      textAlign: TextAlign.center,
    );
  }
}

// Widget to display the Product Price
class ProductPrice extends StatelessWidget {
  final int price;

  const ProductPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          '\$${price.toStringAsFixed(2)}',
          style: const TextStyle(
              fontSize: 24.0, color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// Widget to Display the Product information in a Table
class ProductInfo extends StatelessWidget {
  final ProductData product;

  const ProductInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(2),
          },
          border: TableBorder.all(
            color: Colors.black, // Border color
            width: 2.0, // Border width
            style: BorderStyle.solid, // Border style
          ),
          children: [
            TableRow(children: [
              const TableCellContent(content: 'Description'),
              TableCellContent(content: product.description)
            ]),
            TableRow(children: [
              const TableCellContent(content: 'Discount Percentage'),
              TableCellContent(
                  content: '${product.discountPercentage.toString()}%')
            ]),
            TableRow(children: [
              const TableCellContent(content: 'Rating'),
              TableCellContent(content: '${product.rating.toString()}/5')
            ]),
            TableRow(children: [
              const TableCellContent(content: 'Stock'),
              TableCellContent(content: product.stock.toString())
            ]),
            TableRow(children: [
              const TableCellContent(content: 'Brand'),
              TableCellContent(content: product.brand)
            ]),
            TableRow(children: [
              const TableCellContent(content: 'Category'),
              TableCellContent(content: product.category)
            ]),
          ]),
    );
  }
}

// Customized cell for the information table
class TableCellContent extends StatelessWidget {
  final String content;

  const TableCellContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return TableCell(
        child: Container(
            padding: const EdgeInsets.all(4.0),
            // color: Colors.black12,
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'SpaceGrotesk',
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )));
  }
}

// Widget to display the Product images in a gridview
class ProductImages extends StatelessWidget {
  final List<dynamic> images;

  const ProductImages({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Product Images',
          style: TextStyle(fontFamily: 'Righteous', fontSize: 24),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(images[index].toString()),
            );
          },
        ),
      ],
    );
  }
}
