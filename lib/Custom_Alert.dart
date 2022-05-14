import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> CustomAlert(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(pesan),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Mantap"))
          ],
        );
      });
}
