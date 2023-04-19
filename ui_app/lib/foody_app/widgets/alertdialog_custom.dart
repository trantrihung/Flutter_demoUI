import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AlertDialogCustom extends StatefulWidget {
  const AlertDialogCustom({super.key});

  @override
  State<AlertDialogCustom> createState() => _AlertDialogCustomState();
}

class _AlertDialogCustomState extends State<AlertDialogCustom> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Icon(Icons.person),
      content: Text("abc"),
    );
  }
}
