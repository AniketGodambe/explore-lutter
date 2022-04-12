import 'package:flutter/material.dart';
import 'package:git_hubdemo/models/catalog.dart';
import 'package:git_hubdemo/widgets.dart/drawer.dart';
import 'package:git_hubdemo/widgets.dart/item-widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModels.items[0]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Git Hub Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: const MyDrawer(),
    );
  }
}
