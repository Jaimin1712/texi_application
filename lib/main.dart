import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final String stringValue;
  final String baseUrl;
  final String primaryColor;
  final String backgroundColor;
  final String imagePath;

  const MainScreen({super.key,
    required this.stringValue,
    required this.baseUrl,
    required this.primaryColor,
    required this.backgroundColor,
    required this.imagePath});

  @override
  State<StatefulWidget> createState() => _MainScreenstate();
}

class _MainScreenstate extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: converToColor(widget.backgroundColor)),
              child: Text(widget.stringValue,
                style: TextStyle(color: converToColor(widget.primaryColor)),
              ),
            ),
            Image.asset("assets/image/${widget.imagePath}/login.png")
          ],
        ),
      ),
    );
  }

  converToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}