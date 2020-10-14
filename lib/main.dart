import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labelle_cliente/page/login/Login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MaterialApp(
      home: login(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
      )));
}
