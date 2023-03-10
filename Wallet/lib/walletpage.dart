import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet/constans.dart';
import 'package:wallet/newcard.dart';

var cardAspectRatio = 11.0 / 8.0;
var widgetAspectRatio = cardAspectRatio * 1.0;

List<String> images = [
  "images/card_1_removebg.png",
  "images/card_2_removebg.png",
  "images/card_3_removebg.png",
  "images/card_4_removebg.png",
];

List<String> title = [
  "Hounted Ground",
  "Fallen In Love",
  "The Dreaming Moon",
  "Jack the Persian and the Black Castel",
];

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });

    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 50, bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: CupertinoColors.extraLightBackgroundGray,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                alignment: Alignment.topRight,
                                child: const CircleAvatar(
                                  backgroundColor: Color(0xFFffede9),
                                  radius: 25,
                                  child: Icon(CupertinoIcons.ellipsis_vertical,
                                      color: CupertinoColors.black),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 36),
                                alignment: Alignment.topRight,
                                child: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/Rdj.jpeg"),
                                  radius: 25,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          textAlign: TextAlign.left,
                          "Hello William 🙃",
                          style: kTestStyle8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 30),
                              child: RichText(
                                text: const TextSpan(
                                    text: "Give Your \nBanking Card \na ",
                                    style: kTestStyle1,
                                    children: [
                                      TextSpan(
                                          text: "New Look", style: kTestStyle2)
                                    ]),
                              ),
                            ),
                            // Text(
                            //   "Give Your Banking Card a",
                            //   style: kTestStyle1,
                            //   textAlign: TextAlign.start,
                            // ),
                            // Text(
                            //   " New Look",
                            //   style: kTestStyle2,
                            //   textAlign: TextAlign.left,
                            // ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  Stack(
                                    children: <Widget>[
                                      CardScrollWidget(currentPage),
                                      Positioned.fill(
                                        child: PageView.builder(
                                          itemCount: images.length,
                                          controller: controller,
                                          reverse: true,
                                          itemBuilder: (context, index) {
                                            return Container();
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "Choose a card",
                              style: kTestStyle12,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 16, right: 16, top: 16, bottom: 20),
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFffe48c),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (contex) => const NewCard(),
                                ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(22.0),
                              child: Text(
                                'Choose New',
                                style: kTestStyle11,
                              ),
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
        ],
      ),
    );
  }
}

class CardScrollWidget extends StatefulWidget {
  var currentPage;

  CardScrollWidget(this.currentPage, {super.key});

  @override
  State<CardScrollWidget> createState() => _CardScrollWidgetState();
}

class _CardScrollWidgetState extends State<CardScrollWidget> {
  var padding = 30.0;

  var verticalInset = 30.0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 5 * padding;
        var safeHeight = height - 5 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = [];

        for (var i = 0; i < images.length; i++) {
          var delta = i - widget.currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            // Padding(
                            //   padding: EdgeInsets.symmetric(
                            //       horizontal: 16.0, vertical: 8.0),
                            //   child: Text(title[i],
                            //       style: TextStyle(
                            //           color: Colors.white,
                            //           fontSize: 25.0,
                            //           fontFamily: "SF-Pro-Text-Regular")),
                            // ),
                            // SizedBox(
                            //   height: 10.0,
                            // ),
                            // Padding(
                            //   padding:
                            //       EdgeInsets.only(left: 12.0, bottom: 12.0),
                            //   child: Container(
                            //     padding: EdgeInsets.symmetric(
                            //         horizontal: 22.0, vertical: 6.0),
                            //     decoration: BoxDecoration(
                            //         color: Colors.blueAccent,
                            //         borderRadius: BorderRadius.circular(20.0)),
                            //     child: Text("Read Later",
                            //         style: TextStyle(color: Colors.white)),
                            //   ),
                            // )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}

//Stack(
//                                 children: [
//                                   Transform.rotate(
//                                     angle: 0.25,
//                                     child: Image.asset("images/card_1.png"),
//                                   ),
//                                   Transform.rotate(
//                                     angle: -0.225,
//                                     child: Image.asset("images/card_2.png"),
//                                   ),
//                                   Transform.rotate(
//                                     angle: 0.204,
//                                     child: Image.asset("images/card_4.png"),
//                                   ),
//                                   Transform.rotate(
//                                     angle: 0.0,
//                                     child: Image.asset("images/card_3.png"),
//                                   ),
//                                 ],
//                               )
