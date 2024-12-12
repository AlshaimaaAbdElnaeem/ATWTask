import 'package:flutter/material.dart';

void showCustomDialog(BuildContext context , {required String title,required String content}) {
  showDialog(
    context: context,
    builder: (context) {
      return   AlertDialog(
        title:  Text(title),
        content:  Text(content),
      );
    },

  );
  Future.delayed(const Duration(seconds: 20), () {
    Navigator.of(context).pop();
  });
}
