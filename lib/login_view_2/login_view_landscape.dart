import 'package:flutter/material.dart';

class LogInLandscape extends StatefulWidget {
  const LogInLandscape({Key? key}) : super(key: key);

  @override
  _LogInLandscapeState createState() => _LogInLandscapeState();
}

class _LogInLandscapeState extends State<LogInLandscape> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 20,
    width: 20
      ,decoration:BoxDecoration(shape: BoxShape.circle,color: Colors.blue),);
  }
}
