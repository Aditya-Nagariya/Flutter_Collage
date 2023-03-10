import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet/constans.dart';
import 'package:wallet/finalpage.dart';

class NewCard extends StatefulWidget {
  const NewCard({Key? key}) : super(key: key);

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, top: 13, bottom: 13),
                                child: InkWell(
                                  child: const Icon(CupertinoIcons.arrow_left),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
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
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 18, right: 8, top: 8, bottom: 8),
                              child: Text(
                                "Choose illustration",
                                style: kTestStyle3,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFffecea),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  CupertinoIcons.slider_horizontal_3,
                                  size: 33,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 40, right: 40, top: 40),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      spreadRadius: 2, // soften the shadow
                                      offset: Offset(
                                        1.0, // Move to right 5  horizontally
                                        5.0, // Move to bottom 5 Vertically
                                      ),
                                    )
                                    // BoxShadow(
                                    //   color: Colors.grey,
                                    //   blurRadius: 10.0,
                                    //   spreadRadius: 01, // soften the shadow
                                    //   offset: Offset(
                                    //     5.0, // Move to right 5  horizontally
                                    //     5.0, // Move to bottom 5 Vertically
                                    //   ),
                                    // )
                                  ],
                                  color: CupertinoColors
                                      .secondarySystemGroupedBackground,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(30.0),
                                    child: Text(
                                      "Nature",
                                      style: kTestStyle4,
                                    ),
                                  ),
                                  Image.asset("images/Nature.png", scale: 0.9),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              CupertinoIcons.money_dollar,
                                              size: 40,
                                              color: Color(0xFFfea0c4),
                                            ),
                                            Text(
                                              "54",
                                              style: kTestStyle5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (contex) => const FinalPage()));
                            },
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 40, right: 40, bottom: 20),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      // spreadRadius: 1, // soften the shadow
                                      offset: Offset(
                                        1.0, // Move to right 5  horizontally
                                        1.0, // Move to bottom 5 Vertically
                                      ),
                                    )
                                  ],
                                  color: CupertinoColors
                                      .secondarySystemGroupedBackground,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(30.0),
                                    child: Text(
                                      "Form",
                                      style: kTestStyle4,
                                    ),
                                  ),
                                  Image.asset("images/Form.png", scale: 0.9),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              CupertinoIcons.money_dollar,
                                              size: 40,
                                              color: Color(0xFFfea0c4),
                                            ),
                                            Text(
                                              "67",
                                              style: kTestStyle5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (contex) => const FinalPage()));
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
