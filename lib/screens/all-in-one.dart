import 'package:flutter/material.dart';

class AllInOne extends StatefulWidget {
  const AllInOne({Key? key}) : super(key: key);

  @override
  State<AllInOne> createState() => _AllInOneState();
}

class _AllInOneState extends State<AllInOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        //Text
        const SizedBox(height: 20),
        const Text(
          "Text with style",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        const Text(
          "Text",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              wordSpacing: 2,
              color: Colors.black),
        ),
        //Container Code
        const SizedBox(height: 20),
        const Text(
          "Container",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: const Color(0x00ffffff))),
          child: const Text(
            "Container",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        //Container  with gradiant
        const SizedBox(height: 20),
        const Text(
          "Container with gradient",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              gradient:
                  const LinearGradient(colors: [Colors.red, Colors.black]),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: const Color(0x00ffffff))),
          child: const Text(
            "Container",
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        //ListView.builder here const SizedBox(height: 20),
        const SizedBox(height: 20),
        const Text(
          "ListView.builder",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(width: 2, color: const Color(0xffffff))),
                  child: Text(
                    "ListView " + index.toString(),
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
        const SizedBox(height: 20),
        const Text(
          "GridView.builder",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        GridView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: 6,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  "GridView " + index.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
              );
            }),
      ]),
    ));
  }
}
