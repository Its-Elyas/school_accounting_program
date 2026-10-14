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
      theme: ThemeData(fontFamily: "Irancell"),
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
                          // color: Colors.white30,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2), // Border width
                                decoration: BoxDecoration(
                                  color: HexColor('#99ddff'),
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(48), // Image radius
                                    child: Image.asset(
                                      'assets/images/user-avatar.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                'نام کاربر: کاربر 1',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(width: 200, height: 1, color: Colors.white38),
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
                                  child: const Text('شهریه و پرداخت'),
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

                      const Spacer(),

                      const Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.developer_mode, color: Colors.white70),
                            SizedBox(width: 5),
                            Text(
                              'Developed By Elyas',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Main content
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: myColor,
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 0,
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.transparent,
                              ),
                              foregroundColor:
                                  WidgetStateProperty<Color>.fromMap(
                                    <WidgetStatesConstraint, Color>{
                                      WidgetState.focused: Colors.blueAccent,
                                      WidgetState.pressed | WidgetState.hovered:
                                          Colors.blue,
                                      WidgetState.any: Colors.deepOrangeAccent,
                                    },
                                  ),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text("پشتیبانی"),
                                Icon(Icons.support_agent),
                              ],
                            ),
                          ),
                          const Text(
                            'برنامه حسابداری مدرسه عارف',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            'تاریخ: 1405/07/22',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
