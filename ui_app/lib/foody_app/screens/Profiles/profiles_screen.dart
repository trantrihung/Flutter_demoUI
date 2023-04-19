import 'package:flutter/material.dart';

import '../../utils/theme.dart';
import '../../widgets/button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(),
        title: const Text("Your Profile"),
      ),
      body: Stack(
        children: [
          ListView(
            // shrinkWrap: true,
            children: [
              Column(
                // "assets/images/foody/avatar.png"
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/foody/avatar.png"),
                    radius: 70.0,
                  ),
                  const SizedBox(height: 32),
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
                            fillColor: kBackgroundTextFormField,
                            suffixIcon: Icon(Icons.date_range),
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
                            labelText: "Full name",
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
                            labelText: "Date of birth",
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
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(32),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: ButtonPrimary(
                title: "Sign Up",
                isButtonPrimary: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
