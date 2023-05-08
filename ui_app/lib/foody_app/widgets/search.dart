import 'package:flutter/material.dart';

import '../utils/styles.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        style: p1,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: small),
            hintText: "What are you craving?",
            hintStyle: p1,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: kBackgroundTextFormField,
            prefixIcon: const Padding(
              padding: EdgeInsetsDirectional.only(start: 30, end: 10),
              child: Icon(
                Icons.search,
                // size: 32,
              ),
            )),
      ),
    );
  }
}
