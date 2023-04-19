import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_app/foody_app/widgets/button.dart';

class LetYouIn extends StatelessWidget {
  const LetYouIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     // Scaffold.of(context).openDrawer();
        //   },
        //   // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        // ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/foody/authen.png"),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Let's you in",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                ),

                const ButtonPrimary(
                  title: "Continue with Facebook",
                  iconWidget: Icon(
                    Icons.facebook,
                    color: Color(0xFF1791e8),
                    size: 32,
                  ),
                ),
                ButtonPrimary(
                  title: "Continue with Google",
                  iconWidget: Image.asset("assets/images/foody/google.png"),
                ),
                const ButtonPrimary(
                  title: "Continue with Apple",
                  iconWidget: Icon(
                    Icons.apple,
                    size: 32,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Divider(
                          height: 1,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          "Or",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Divider(
                          height: 1,
                        ),
                      )
                    ],
                  ),
                ),
                const ButtonPrimary(
                  isButtonPrimary: true,
                  title: "Sign in with Phone Number",
                ),

                // * Don't have an account?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(onPressed: () {}, child: const Text("Sign Un")),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
