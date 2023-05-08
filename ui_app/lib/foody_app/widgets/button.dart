import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/utils/styles.dart';

class ButtonPrimary extends StatelessWidget {
  final Widget? iconWidget;
  final String title;
  final bool? isButtonPrimary;
  final void Function()? onTap;
  const ButtonPrimary({
    required this.title,
    this.iconWidget,
    this.isButtonPrimary,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      // padding: const EdgeInsets.symmetric(vertical: 26),
      // margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: isButtonPrimary == true
          ? ElevatedButtonPrimary(
              title: title,
              onTap: onTap,
            )
          : OutLineButton(iconWidget: iconWidget, title: title, onTap: onTap),
    );
  }
}

class ElevatedButtonPrimary extends StatelessWidget {
  const ElevatedButtonPrimary({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            // color: Colors.blue.withOpacity(0.1),
            blurRadius: 16,
            offset: const Offset(0, 1),
            color: kColorPrimary.withOpacity(0.3),
          )
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          foregroundColor: Colors.white,
        ),
        onPressed: onTap ?? () {},
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class OutLineButton extends StatelessWidget {
  const OutLineButton({
    Key? key,
    required this.iconWidget,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final Widget? iconWidget;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        foregroundColor: Colors.black,
      ),
      onPressed: onTap ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconWidget == null ? const Text("") : iconWidget!,
          SizedBox(width: title == "" ? 0 : 8),
          // title == null ? Text(""):
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
      // const ListTile(
      //   leading: Icon(Icons.facebook),
      //   title: Text("Facebook"),
      // ),
    );
  }
}
