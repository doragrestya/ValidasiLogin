import 'package:flutter/material.dart';
import 'package:validasi_login/LoginPage.dart';

void main() => runApp(MaterialApp(
  home: LoginPage(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.yellow)),
));