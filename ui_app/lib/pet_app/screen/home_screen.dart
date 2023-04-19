import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dogs = [
      {"title": "Cocoa", "image": "assets/images/pet/dog_cocoa.png"},
      {"title": "Marly", "image": "assets/images/pet/dog_marly_cover.png"},
      {"title": "Marly01", "image": "assets/images/pet/dog_marly_01.png"},
      {"title": "Marly02", "image": "assets/images/pet/dog_marly_02.png"},
      {"title": "Marly03", "image": "assets/images/pet/dog_marly_03.png"},
      {"title": "Walt", "image": "assets/images/pet/walt.png"},
    ];

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            color: Colors.green,
            icon: const Icon(Icons.menu),
          ),
          actions: const <Widget>[
            CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  scale: 1,
                  "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/284802880/original/1ab581dccd955d38ed1ff9827f6bcbf24a2fd4e5/design-2-unique-professional-business-logo.jpg"),
              radius: 55,
            ),
          ],
          backgroundColor: Colors.transparent,

          //* border radius của các góc "AppBar"
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),

          //* Shadow bên dưới của AppBar
          elevation: 0,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset("assets/images/pet/welcome_message.png"),
                  ),
                  Positioned(
                    left: 150,
                    bottom: 0,
                    top: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              const TextSpan(text: "Hello "),
                              TextSpan(
                                text: "BrianTran",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: Colors.green[200],
                                ),
                              )
                            ],
                          ),
                        ),
                        Text("I'm developer"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: const Text(
                "Dogs",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 170,
              child: ListView.builder(
                itemCount: dogs.length,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  //! muốn chỉnh được height || width bên trong Listview phải bọc bằng Align || Row || Column
                  //! muốn boxshaldow có thể phủ xuống bên dưới hoặc trên trong widget Listview thì phải dùng clipBehevior: Clip.none
                  return Align(
                    child: Container(
                      height: 170,
                      width: 150,
                      margin: EdgeInsets.only(left: index == 0 ? 30 : 15),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/pet/cat_brook.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                height: 17,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  "Cat",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              const Icon(Icons.favorite_border,
                                  color: Colors.red, size: 16),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "Marly",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black54),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "17 jun 2022",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: const Text(
                "Cats",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 170,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  //! muốn chỉnh được height || width bên trong Listview phải bọc bằng Align || Row || Column
                  //! muốn boxshaldow có thể phủ xuống bên dưới hoặc trên trong widget Listview thì phải dùng clipBehevior: Clip.none
                  return Align(
                    child: Container(
                      height: 170,
                      width: 150,
                      margin: EdgeInsets.only(left: index == 0 ? 30 : 15),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red,
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/pet/cat_brook.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                height: 17,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  "Cat",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              const Icon(Icons.favorite_border,
                                  color: Colors.red, size: 16),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "Marly",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black54),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "17 jun 2022",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
        backgroundColor: Colors.white54,
      ),
    );
  }
}
