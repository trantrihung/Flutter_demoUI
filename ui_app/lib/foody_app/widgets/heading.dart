import 'package:flutter/material.dart';

import '../utils/styles.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: Image.asset(
            "assets/images/foody/avatar.png",
            height: 48,
            width: 48,
          ),
        ),
        SizedBox(width: small),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Deliver to",
              style: p1,
            ),
            Text(
              "Time Square",
              style: heading3,
            )
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kColorGrey),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {},
                    splashRadius: 25,
                    icon: Icon(Icons.notifications_active_outlined)),
              ),
              SizedBox(width: small),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kColorGrey),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {},
                    splashRadius: 25,
                    icon: Icon(Icons.shopify_outlined)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
