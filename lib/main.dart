import 'package:flutter/material.dart';
import 'package:hexcolorconvert/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> myColor = [
    HexColor('#000f3d'),
    HexColor('#18254d'),
    HexColor('#2d489c'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sidebar
              Container(
                width: 220,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: myColor,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  // color: const Color(0xFF011C40),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          color: Colors.white30,
                          child: Row(
                            children: [
                              Image.asset(),
                              Text('Username')
                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 200,
                          height: 1,
                          color: Colors.white38),
                      SizedBox(height: 30),

                      SizedBox(
                        width: 200,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#454f8f'),
                            foregroundColor: Colors.white,
                            side: BorderSide(
                              color: HexColor('#badeff'),
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                          ),
                          onPressed: () {
                            // Navigate to home page
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: const Text('داشبورد'),
                              ),
                              const Icon(Icons.home_filled),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor('#454f8f'),
                              foregroundColor: Colors.white,
                              side: BorderSide(
                                color: HexColor('#badeff'),
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              // Navigate to home page
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: const Text('دانش آموزان'),
                                ),
                                const Icon(Icons.person),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor('#454f8f'),
                              foregroundColor: Colors.white,
                              side: BorderSide(
                                color: HexColor('#badeff'),
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              // Navigate to home page
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: const Text('شهریه و پرداخت ها'),
                                ),
                                const Icon(Icons.price_change),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor('#454f8f'),
                              foregroundColor: Colors.white,
                              side: BorderSide(
                                color: HexColor('#badeff'),
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              // Navigate to home page
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: const Text('هزینه ها'),
                                ),
                                const Icon(Icons.money),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor('#454f8f'),
                              foregroundColor: Colors.white,
                              side: BorderSide(
                                color: HexColor('#badeff'),
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              // Navigate to home page
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: const Text('گزارشات مالی'),
                                ),
                                const Icon(Icons.document_scanner_rounded),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor('#454f8f'),
                              foregroundColor: Colors.white,
                              side: BorderSide(
                                color: HexColor('#badeff'),
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              // Navigate to home page
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: const Text('تنظبمات'),
                                ),
                                const Icon(Icons.settings),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Main content
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 0),
                  child: Center(child: const Text('Content')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
