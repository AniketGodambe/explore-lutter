import 'package:flutter/material.dart';
import 'package:git_hubdemo/widgets.dart/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_hubdemo/widgets.dart/videoplayer.dart';
import 'package:get/get.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          //Text
          const SizedBox(height: 20),
          TitleUI(title: "Text with style"),
          const SizedBox(height: 20),

          const Text(
            "Text with style",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                wordSpacing: 2,
                color: Colors.black),
          ),
          //Container Code
          const SizedBox(height: 20),
          TitleUI(title: "Container"),
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

          TitleUI(title: "Container with gradient"),
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
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //ListView.builder here const SizedBox(height: 20),
          const SizedBox(height: 20),

          TitleUI(title: "ListView.builder"),

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
          TitleUI(title: "GridView.builder"),
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
          const SizedBox(height: 20),
          TitleUI(title: "RichText Example"),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "hello",
              children: [
                TextSpan(
                    text: 'bold',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 23)),
                TextSpan(
                    text: ' world!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 23)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          TitleUI(title: "SVG Picture"),
          const SizedBox(height: 20),

          SvgPicture.asset("assets/emptychatscreen.svg"),
          const SizedBox(height: 20),

          TitleUI(title: "Normal Picture"),
          const SizedBox(height: 20),

          Image.asset("assets/mobile.png"),

          const SizedBox(height: 20),

          TitleUI(title: "SimpleDialog"),
          SimpleDialog(
            title: const Text('States '),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('1. Maharashtra'),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('2. Gujarat'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 20),

          TitleUI(title: "Show Alert Dialoge"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: const Text('Show alert'),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ),
          const SizedBox(height: 20),

          TitleUI(title: "Submit Button"),
          const SizedBox(height: 10),
          GestureDetector(
            child: IgnorePointer(
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10 / 1.2),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFF7F4C),
                      Color(0xffFF4A01),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Submit Button ",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          TitleUI(title: "Video Player"),
          GestureDetector(
            onTap: () {
              Get.to(() => const VideoPlayer());
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10 / 1.2),
              ),
              child: Column(
                children: const [
                  Icon(
                    Icons.play_circle,
                    color: Colors.white,
                  ),
                  Text("Play"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          TitleUI(title: "Text Button"),
          TextButton(onPressed: () {}, child: const Text('TextButton')),
          const SizedBox(height: 20),

          TitleUI(title: "TextField"),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10 / 1.2),
            ),
            child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "TextFormField hint",
                  label: Text("Label text"),
                )),
          )
        ]),
      ),
    ));
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = ElevatedButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Simple Alert"),
      content: const Text("This is an alert message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
