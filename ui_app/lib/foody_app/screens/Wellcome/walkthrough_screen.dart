import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/utils/theme.dart';
import 'package:ui_app/foody_app/widgets/walkthrough_widget.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({super.key});

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  List api = [
    {
      "img": "assets/images/foody/walkthrough1.png",
      "heading": "Order for Food",
      "title":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
    },
    {
      "img": "assets/images/foody/walkthrough2.png",
      "heading": "Easy Payment",
      "title":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
    },
    {
      "img": "assets/images/foody/walkthrough3.png",
      "heading": "Fast Delivery",
      "title":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.",
    },
  ];
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    // print(currentPage);
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: api.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return WalkThroughWidget(
              img: api[index]["img"],
              heading: api[index]["heading"],
              title: api[index]["title"],
              index: index,
              onTap: () {
                // print(currentPage);
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                );
                // setState(() {
                //   currentPage++;
                // });
              },
            );
          },
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
          // physics: BouncingScrollPhysics(),
          // controller: controller,
          // children: const [
          //   WalkThroughWidget(),
          //   WalkThroughWidget(),
          // ],
        ),
        Positioned(
          bottom: 150,
          left: 0,
          right: 0,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(api.length, (indexDots) {
                return Container(
                  margin: const EdgeInsets.only(right: 4),
                  height: 8,
                  width: currentPage == indexDots ? 28 : 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:
                        currentPage == indexDots ? kColorPrimary : kColorGrey,
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
