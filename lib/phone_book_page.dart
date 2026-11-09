import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

class PhoneBookPage extends StatefulWidget {
  const PhoneBookPage({super.key});

  @override
  State<PhoneBookPage> createState() => _PhoneBookPageState();
}

class _PhoneBookPageState extends State<PhoneBookPage> {
  String searchName = '';
  String searchPhone = '';

  final List<Map<String, String>> contacts = [
    {'name': 'علی محمدی', 'phone': '09123456789'},
    {'name': 'محمد رضایی', 'phone': '09121234567'},
    {'name': 'حسین کریمی', 'phone': '09121112233'},
    {'name': 'حسین کریمی', 'phone': '09121112233'},
    {'name': 'حسین کریمی', 'phone': '09121112233'},
    {'name': 'حسین کریمی', 'phone': '09121112233'},
    {'name': 'حسین کریمی', 'phone': '09121112233'},
  ];

  Widget _headerCell(String title, double width) {
    return Container(
      width: width,
      height: 50,
      alignment: Alignment.center,
      color: const Color(0xFF18254D),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredContacts = contacts.where((contact) {
      return contact['name']!.contains(searchName) &&
          contact['phone']!.contains(searchPhone);
    }).toList();

    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: EdgeInsets.only(bottom: 40),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black45),
            color: const Color(0xFF5F677C),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 400, right: 60),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'جستجوی نام',
                      icon: Icon(Icons.search, size: 20, color: Colors.white),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchName = value;
                      });
                    },
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 400, right: 60),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                    keyboardType: TextInputType.phone,

                    decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      labelText: 'جستجوی شماره تلفن',
                      icon: Icon(Icons.search, size: 20, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchPhone = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 20),
          color: Colors.black45,
          child: const SizedBox(height: 1, width: 700),
        ),

        const SizedBox(height: 15),


        Expanded(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: HorizontalDataTable(
              leftHandSideColumnWidth: 200,
              rightHandSideColumnWidth: 250,

              isFixedHeader: true,

              itemCount: filteredContacts.length,
              itemExtent: 100,

              headerWidgets: [
                _headerCell('توضیحات', 250),
                _headerCell('شماره تلفن', 250),
                _headerCell('نام مخاطب', 200),
              ],

              rightSideItemBuilder: (context, index) {
                final contact = filteredContacts[index];

                return Container(
                  width: 300,
                  height: 55,
                  alignment: Alignment.center,

                  child: Text(contact['name']!),
                );
              },

              leftSideItemBuilder: (context, index) {
                final contact = filteredContacts[index];

                return Container(
                  width: 250,
                  height: 55,
                  alignment: Alignment.center,
                  child: Text(
                    contact['phone']!,
                    textDirection: TextDirection.ltr,
                  ),
                );
              },

              leftHandSideColBackgroundColor: Colors.white,
              rightHandSideColBackgroundColor: Colors.white,

              rowSeparatorWidget: const Divider(
                height: 1,
                color: Colors.black26,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
