import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  // For base option
  bool isBaseDataMenuOpen = false;

  // For accounting operation
  bool isAccountingMenuOpen = false;

  // For edits operation
  bool isEdittingMenuOpen = false;

  // For reports operation
  bool isReportingMenuOpen = false;

  // For admin settings operation
  bool isAdminSettingMenuOpen = false;

  void SetActive(String operationName, bool status){
    switch (operationName)  {
      case 'isBaseDataMenuOpen':
        isBaseDataMenuOpen = status;
        isAccountingMenuOpen = false;
        isEdittingMenuOpen = false;
        isReportingMenuOpen = false;
        isAdminSettingMenuOpen = false;
        break;
      case 'isAccountingMenuOpen'  :
        isAccountingMenuOpen = status;
        isBaseDataMenuOpen = false;
        isEdittingMenuOpen = false;
        isReportingMenuOpen = false;
        isAdminSettingMenuOpen = false;
        break;
      case 'isEdittingMenuOpen':
        isEdittingMenuOpen = status;
        isAccountingMenuOpen = false;
        isBaseDataMenuOpen = false;
        isReportingMenuOpen = false;
        isAdminSettingMenuOpen = false;
        break;
      case 'isReportingMenuOpen':
        isReportingMenuOpen = status;
        isEdittingMenuOpen = false;
        isAccountingMenuOpen = false;
        isBaseDataMenuOpen = false;
        isAdminSettingMenuOpen = false;
        break;
      case 'isAdminSettingMenuOpen':
        isAdminSettingMenuOpen = status;
        isReportingMenuOpen = false;
        isEdittingMenuOpen = false;
        isAccountingMenuOpen = false;
        isBaseDataMenuOpen = false;
        break;
      default:
        isReportingMenuOpen = false;
        isEdittingMenuOpen = false;
        isAccountingMenuOpen = false;
        isBaseDataMenuOpen = false;
        break;
    }
  }

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

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Main Header
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: const EdgeInsets.only(top: 10, left: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    SetActive('isAdminSettingMenuOpen', !isAdminSettingMenuOpen);
                                  });
                                },
                                child: Row(
                                  children: [
                                    Text(
                                        'تنظیمات مدیریتی',
                                      style: TextStyle(
                                        color: isAdminSettingMenuOpen
                                            ? Colors.red
                                            : null,
                                      ),
                                    ),
                                    Icon(
                                      isAdminSettingMenuOpen
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,

                                      color: isAdminSettingMenuOpen
                                          ? Colors.red
                                          : Colors.deepPurpleAccent,
                                    ),
                                  ],
                                ),

                              ),

                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    SetActive('isReportingMenuOpen', !isReportingMenuOpen);
                                  });
                                },
                                child: Row(
                                  children: [
                                     Text(
                                        'گزارشات',
                                      style: TextStyle(
                                        color: isReportingMenuOpen
                                            ? Colors.red
                                            : null,
                                      ),
                                    ),
                                    Icon(
                                      isReportingMenuOpen
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,

                                      color: isReportingMenuOpen
                                          ? Colors.red
                                          : Colors.deepPurpleAccent,
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    SetActive('isEdittingMenuOpen', !isEdittingMenuOpen);
                                  });
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                     Text(
                                      'اصلاحات',
                                      style: TextStyle(
                                        color: isEdittingMenuOpen
                                            ? Colors.red
                                            : null,
                                      ),
                                    ),
                                    Icon(
                                      isEdittingMenuOpen
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,

                                      color: isEdittingMenuOpen
                                          ? Colors.red
                                          : Colors.deepPurpleAccent,
                                    ),
                                  ],
                                ),
                              ),

                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    SetActive('isAccountingMenuOpen', !isAccountingMenuOpen);
                                  });
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'عملیات مالی',
                                      style: TextStyle(
                                        color: isAccountingMenuOpen
                                            ? Colors.red
                                            : null,
                                      ),
                                    ),
                                    Icon(
                                      isAccountingMenuOpen
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,

                                      color: isAccountingMenuOpen
                                          ? Colors.red
                                          : Colors.deepPurpleAccent,
                                    ),
                                  ],
                                ),
                              ),

                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    SetActive('isBaseDataMenuOpen', !isBaseDataMenuOpen);
                                  });
                                },

                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'امکانات پایه',
                                      style: TextStyle(
                                        color: isBaseDataMenuOpen
                                            ? Colors.red
                                            : null,
                                      ),
                                    ),
                                    Icon(
                                      isBaseDataMenuOpen
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: isBaseDataMenuOpen
                                          ? Colors.red
                                          : null,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Expandable Menu for isBaseDataMenuOpen
                        AnimatedSize(
                          duration: const Duration(milliseconds: 350),
                          reverseDuration: const Duration(milliseconds: 350),
                          curve: Curves.easeInOut,
                          alignment: Alignment.topCenter,
                          child: isBaseDataMenuOpen
                              ? Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 5,
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Wrap(
                                    spacing: 12,
                                    runSpacing: 10,
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          exit(0);
                                        },
                                        icon: const Icon(Icons.logout),
                                        label: const Text('خروج از نرم افزار'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(Icons.backup_table),
                                        label: const Text(
                                          'تهیه و بازیابی نسخه پشتیبان',
                                        ),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.perm_phone_msg_outlined,
                                        ),
                                        label: const Text('دفتر تلفن'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.people_alt_outlined,
                                        ),
                                        label: const Text('طرف حساب'),
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),

                        // Expandable Menu for isAccountingMenuOpen
                        AnimatedSize(
                          duration: const Duration(milliseconds: 350),
                          reverseDuration: const Duration(milliseconds: 350),
                          curve: Curves.easeInOut,
                          alignment: Alignment.topCenter,
                          child: isAccountingMenuOpen
                              ? Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 5,
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Wrap(
                                    spacing: 12,
                                    runSpacing: 10,
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(Icons.account_balance),
                                        label: const Text('تعریف بانک'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(Icons.request_page),
                                        label: const Text('چک ها'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.account_balance_wallet,
                                        ),
                                        label: const Text('صدور سند حسابداری'),
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),

                        // Expandable Menu for isEdittingMenuOpen
                        AnimatedSize(
                          duration: const Duration(milliseconds: 350),
                          reverseDuration: const Duration(milliseconds: 350),
                          curve: Curves.easeInOut,
                          alignment: Alignment.topCenter,
                          child: isEdittingMenuOpen
                              ? Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 5,
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Wrap(
                                    spacing: 12,
                                    runSpacing: 10,
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(Icons.delete_forever),
                                        label: const Text('حذف گروهی اسناد'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(Icons.request_page),
                                        label: const Text('چک'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(Icons.currency_bitcoin),
                                        label: const Text('دریافتی'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.find_in_page,
                                        ),
                                        label: const Text('سند'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.people_alt_outlined,
                                        ),
                                        label: const Text('دانش آموز'),
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),

                        // Expandable Menu for isReportingMenuOpen
                        AnimatedSize(
                          duration: const Duration(milliseconds: 350),
                          reverseDuration: const Duration(milliseconds: 350),
                          curve: Curves.easeInOut,
                          alignment: Alignment.topCenter,
                          child: isReportingMenuOpen
                              ? Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                              top: 5,
                            ),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Wrap(
                              spacing: 12,
                              runSpacing: 10,
                              children: [
                                TextButton.icon(
                                  onPressed: () {
                                    exit(0);
                                  },
                                  icon: const Icon(Icons.perm_contact_calendar_outlined),
                                  label: const Text('طرف حساب'),
                                ),
                                TextButton.icon(
                                  onPressed: () {
                                    exit(0);
                                  },
                                  icon: const Icon(Icons.person),
                                  label: const Text('دانش آموز'),
                                ),
                                SizedBox(
                                    height: 35,
                                    width: 2,
                                    child: Container(
                                        color: Colors.black26
                                    )
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.backup_table),
                                  label: const Text(
                                    'گزارش فصلی',
                                  ),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.request_page_outlined),
                                  label: const Text(
                                    'چک ها',
                                  ),
                                ),
                               TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.account_balance_wallet_rounded,
                                  ),
                                  label: const Text('حسابداری'),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.document_scanner_outlined,
                                  ),
                                  label: const Text('گزارش عمومی'),
                                ),
                              ],
                            ),
                          )
                              : const SizedBox.shrink(),
                        ),

                        // Expandable Menu for isAdminSettingMenuOpen
                        AnimatedSize(
                          duration: const Duration(milliseconds: 350),
                          reverseDuration: const Duration(milliseconds: 350),
                          curve: Curves.easeInOut,
                          alignment: Alignment.topCenter,
                          child: isAdminSettingMenuOpen
                              ? Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                              top: 5,
                            ),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Wrap(
                              spacing: 12,
                              runSpacing: 10,
                              children: [
                                TextButton.icon(
                                  onPressed: () {
                                    exit(0);
                                  },
                                  icon: const Icon(Icons.security),
                                  label: const Text('تنظیمات امنیتی'),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.online_prediction),
                                  label: const Text(
                                    'تنظیمات سرویس آنلاین',
                                  ),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.account_circle_outlined,
                                  ),
                                  label: const Text('تنظیمات حساب کاربری'),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.settings_applications,
                                  ),
                                  label: const Text('نظیمات نرم افزار'),
                                ),
                              ],
                            ),
                          )
                              : const SizedBox.shrink(),
                        ),
                      ],
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
