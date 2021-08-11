// ignore_for_file: file_names

import 'package:flutter/material.dart';

void showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Clicked!'),
      action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar,),
    ),
  );
}