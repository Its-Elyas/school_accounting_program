import 'package:flutter/material.dart';
import 'package:hexcolorconvert/hexcolor.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

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

  // Current Dropdown value
  String dropdownvalue = 'اطلاعات پایه';

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  final valueListenable = ValueNotifier<String?>(null);




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
                      height: 50,
                      decoration: BoxDecoration(
                        border: BoxBorder.all(width: 2),
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 0,
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.black54),
                              overlayColor: WidgetStateProperty.resolveWith<Color?>((states){
                                if (states.contains(WidgetState.hovered)){
                                  return HexColor('#EDEDED');
                                }
                                if (states.contains(WidgetState.pressed)){
                                  return HexColor('#ADADAD');
                                }
                              }
                              ),
                              shape: WidgetStatePropertyAll<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)
                                )
                              )
                            ),
                            child: Text("تنظیمات مدیریتی"),

                            onPressed: () {},
                          ),

                          TextButton(
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.black54),
                              overlayColor: WidgetStateProperty.resolveWith<Color?>(
                                  (states){
                                    if (states.contains(WidgetState.hovered)){
                                      return HexColor('#EDEDED');
                                    }
                                    if (states.contains(WidgetState.pressed)){
                                      return HexColor('#ADADAD');
                                    }
                                  }
                              )
                            ),
                              onPressed: () {},
                              child: Text("گزارشات")),

                          TextButton(onPressed: () {}, child: Text("اصلاحات")),

                          TextButton(
                            onPressed: () {},
                            child: Text("عملیات مالی"),
                          ),

                          TextButton(
                            onPressed: () {},
                            child: Text("اطلاعات پایه"),
                          ),

          DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: const Row(
                children: [


                  Expanded(
                    child: Text(
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      'امکانات پایه',
                      style: TextStyle(


                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              items: items
                  .map(
                    (String item) => DropdownItem<String>(
                  value: item,
                  height: 40,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
                  .toList(),
              valueListenable: valueListenable,
              onChanged: (value) {
                valueListenable.value = value;
              },
              buttonStyleData: ButtonStyleData(
                height: 35,
                width: 150,
                // padding: const EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  // border: Border.all(
                  //   color: Colors.black26,
                  // ),
                  // color: Colors.redAccent,
                ),
                elevation: 2,
              ),

              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.redAccent,
                ),
                offset: const Offset(-20, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: WidgetStateProperty.all(6),
                  thumbVisibility: WidgetStateProperty.all(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.only(left: 14, right: 14),
              ),
            ),
          ),








                          PopupMenuButton<String>(
                            tooltip: 'عملیات های پایه',

                            style: ButtonStyle(

                                shape: WidgetStatePropertyAll<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)
                                    )
                                )
                            ),

                            onSelected: (value) {
                              setState(() {
                                dropdownvalue = value;
                              });
                            },

                            color: Colors.white70,

                            itemBuilder: (context) => [
                              const PopupMenuItem(
                            value: 'پایه دهم',
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'پایه دهم',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                              ),
                            ),

                              ),
                              const PopupMenuItem(
                                value: 'پایه یازدهم',
                                child: Text('پایه یازدهم'),
                              ),
                              const PopupMenuItem(
                                value: 'پایه دوازدهم',
                                child: Text('پایه دوازدهم'),
                              ),
                            ],

                            child: Container(
                              width: 90,
                              height: 30,
                              alignment: Alignment.centerRight,
                              child: const Text(
                                'اطلاعات پایه',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      height: 50,
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
