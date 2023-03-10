import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: CupertinoColors.systemGrey,
            title: Text('Wallpaper'),
          ),
          backgroundColor: CupertinoColors.tertiarySystemBackground,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.lightBlue,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image.asset('images/6.jpg'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.purple,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset('images/7.jpg'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.greenAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset('images/8.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    color: CupertinoColors.destructiveRed,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.asset('images/10.jpg'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    color: CupertinoColors.systemTeal,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.asset('images/11.jpg'),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.all(2),
                                    color: CupertinoColors.systemTeal,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset('images/5.jpg'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    color: CupertinoColors.systemGrey,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.asset('images/12.jpg'),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        color: CupertinoColors.systemBlue,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Image.asset('images/Rdj4.jpg'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        color: CupertinoColors.systemYellow,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Image.asset('images/Rdj2.jpg'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
