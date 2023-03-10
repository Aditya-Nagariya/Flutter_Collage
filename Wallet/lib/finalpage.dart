import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constans.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Row(
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
                                    child:
                                        const Icon(CupertinoIcons.arrow_left),
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
                                    child: Icon(
                                        CupertinoIcons.ellipsis_vertical,
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
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "Great choice \n",
                      style: kTestStyle7,
                      children: [
                        TextSpan(text: "William", style: kTestStyle6),
                        TextSpan(text: "😍")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("images/FinalCard.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 16, bottom: 16),
                    child: Text(
                      "The money will be automatically debited \nfrom your card",
                      textAlign: TextAlign.center,
                      style: kTestStyle9,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, right: 16, left: 16, bottom: 16),
                    child: InkWell(
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Back To Choose Card",
                        style: kTestStyle10,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 16, right: 16, top: 60, bottom: 20),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFffe48c),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (contex) => const NewCard(),
                          //   ),
                          // );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 40, right: 40, bottom: 22, top: 22),
                          child: Text(
                            'Apply',
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
    );
  }
}
