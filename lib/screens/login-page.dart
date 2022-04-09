import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_hubdemo/screens/home-page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Get.to(() => const HomePage());
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/login_image2.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome  ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 0.8),
                      ),
                      Text(
                        name,
                        maxLines: 1,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 48, 46, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 0.8),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                            hintText: "Enter Your name", labelText: "Name"),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can not be empty";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: "Enter User name", labelText: "Username"),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can not be empty";
                          } else if (value.length < 8) {
                            return "Enter atleast 8 characters";
                          }
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                      const SizedBox(height: 50),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () => moveToHome(),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 2),
                            alignment: Alignment.center,
                            height: changeButton ? 50 : 40,
                            width: changeButton ? 200 : 150,
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 0.8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
