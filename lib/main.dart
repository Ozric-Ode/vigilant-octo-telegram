import 'package:flutter/material.dart';
import 'BankAccountPage.dart';
import 'LoanFormalPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {},
      debugShowCheckedModeBanner: false,
      title: "Finance Game",

    );
  }
}
