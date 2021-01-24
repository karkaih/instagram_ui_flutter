import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "hello world",
    home: Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: Text("Hello World"),
        ),
      ),
    ),
  ));
}
