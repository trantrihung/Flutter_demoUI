import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_app/foody_app/utils/theme.dart';
import 'package:ui_app/foody_app/widgets/button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/foody/authen.png",
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "Create New Account",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              clipBehavior: Clip.none,
              // shrinkWrap: true,
              children: [
                const SizedBox(height: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // TextField
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        children: [
                          TextFormField(
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              labelText: "Email",
                              prefixIcon: const Icon(Icons.email),
                              fillColor: kBackgroundTextFormField,
                              filled: true,
                              // border: InputBorder.none
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              labelText: "Email",
                              prefixIcon: const Icon(Icons.email),
                              fillColor: kBackgroundTextFormField,
                              filled: true,
                              // border: InputBorder.none
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              labelText: "Email",
                              prefixIcon: const Icon(Icons.email),
                              fillColor: kBackgroundTextFormField,
                              filled: true,
                              // border: InputBorder.none
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const ButtonPrimary(
                            title: "Sign Up",
                            isButtonPrimary: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Divider(
                              height: 1,
                            ),
                          ),
                          Container(
                            // width: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "or continue with",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Divider(
                              height: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 36),
                      child: Row(
                        // NOTE muốn sét widget trong ListView phải có ROW bọc các WIDGET bên trong
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          SizedBox(
                            width: 100,
                            child: ButtonPrimary(
                              title: "",
                              iconWidget: Icon(Icons.facebook),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: ButtonPrimary(
                              title: "",
                              iconWidget: Icon(Icons.facebook),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: ButtonPrimary(
                              title: "",
                              iconWidget: Icon(Icons.facebook),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Sign In"),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
