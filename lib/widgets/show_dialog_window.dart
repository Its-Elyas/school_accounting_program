import 'package:flutter/material.dart';

class CustomDialogWindow extends StatelessWidget {

  String title;
  Widget contentWidget;

  CustomDialogWindow({super.key, required this.title, required this.contentWidget});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: SizedBox(
          width: double.infinity,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          )
      ),
      content: SizedBox(
        width: 800,
        height: 500,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black45
              ),
            ),

          child: Center(
            child: contentWidget,
          ),
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        TextButton.icon(
          onPressed: () {
            Navigator.pop(context
            );
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Colors.black12
            ),
          ),
          label: Text(
              'بستن',
            style: TextStyle( color: Colors.red),
          ),



        ),
      ],
    );
  }
}
