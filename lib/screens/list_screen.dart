import 'package:flutter/material.dart';
import 'package:task_two/widgets/app_bars.dart';
import 'package:task_two/data/api_service.dart';
import 'package:task_two/data/models/product_model.dart';
import 'package:task_two/widgets/product_tile.dart';

//-------------------------------------------------------------------------//

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<ProductData> myList = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () async {
        var data = await ApiService().getData();
        setState(() {
          myList = data;
          isLoading = false;
        });
      },
    );
  }

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const MainAppBar(
              barText: "Products List",
            ),
            body: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                    ),
                    itemCount: myList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ProductTile(product: myList[index]);
                    },
                  )));
  }
}
