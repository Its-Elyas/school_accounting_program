import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

// class for contacts
class Contact {
  String name;
  String number;

  Contact({required this.name, required this.number});
}

class PhoneBookDataSource extends DataGridSource {
  List<Contact> contacts = [];

  PhoneBookDataSource({required List<Contact> data}) {
    updateContacts(data);
  }

  void updateContacts(List<Contact> data) {
    contacts = data;


    _row = contacts.map<DataGridRow>((contact) {
      return DataGridRow(
        cells: [
          DataGridCell<String>(
            columnName: "نام دانش آموز",
            value: contact.name,
          ),
          DataGridCell<String>(columnName: "شماره", value: contact.number),
        ],
      );
    }).toList();

    notifyDataSourceListeners();
  }

  List<DataGridRow> _row = [];

  @override
  List<DataGridRow> get rows => _row;

  @override
  DataGridRowAdapter buildRow(DataGridRow row){
    return DataGridRowAdapter(
      color: Colors.white,
      cells: row.getCells().map<Widget>(
          (cell) {
            return Container(
              alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
            child: Text(
            cell.value.toString(),
            textDirection: cell.columnName == 'phone'
            ? TextDirection.ltr
                : TextDirection.rtl,
            ),
            );
          }
      ).toList(),
    );
  }
}
