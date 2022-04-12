import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:git_hubdemo/models/catalog.dart';
import 'package:git_hubdemo/widgets.dart/drawer.dart';
import 'package:git_hubdemo/widgets.dart/item-widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
    print(productData);
  }

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
