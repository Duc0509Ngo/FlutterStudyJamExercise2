import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.orange,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.pink,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      color: Colors.blue.shade100,
                                    )),
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.green.shade100,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ))
                      ],
                    )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(width: 15, height: double.infinity),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
            Positioned(
              top: height / 2.3,
              left: width / 7,
              child: Container(
                width: width / 3.5,
                height: height / 7,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child:  const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
