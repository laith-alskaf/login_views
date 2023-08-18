import 'package:coursedarrbnei1/Login_View/login_ve_protrate.dart';
import 'package:flutter/material.dart';

import 'login_view_landscape.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  _LogInViewState createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    final isProtrate=MediaQuery.of(context).orientation==Orientation.portrait;
    if(isProtrate)
      return LoginViewPortrate();
    else
      return LoginViewLandSpace();

  }
}
