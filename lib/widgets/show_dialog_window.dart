import 'package:flutter/material.dart';


class CustomDialogWindow extends StatelessWidget {
  final String title;
  final Widget contentWidget;

  const CustomDialogWindow({
    super.key,
    required this.title,
    required this.contentWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 800,
        height: 600,
        child: Column(
          children: [

            Container(
              height: 45,
              color: const Color(0xFF000F3D),
              child: Row(
                children: [

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    tooltip: 'بستن',
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                child: contentWidget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
