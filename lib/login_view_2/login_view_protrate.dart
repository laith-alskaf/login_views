import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogInProtrate extends StatefulWidget {
  const LogInProtrate({Key? key}) : super(key: key);

  @override
  _LogInProtrateState createState() => _LogInProtrateState();
}

class _LogInProtrateState extends State<LogInProtrate> {
  @override
  Widget build(BuildContext context) {
    final mediaQwery = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 11),
                  child: Center(
                      child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black, fontSize:mediaQwery*6/100),
                  )),
                ),
                Text(
                  'By signing in you are agreeing',
                  style: TextStyle(color: Colors.black38, fontSize:mediaQwery*4/100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'our',
                      style: TextStyle(color: Colors.black38, fontSize:mediaQwery*4/100),
                    ),
                    Text(
                      'Tern and privacy policy',
                      style: TextStyle(color: Colors.blue, fontSize:mediaQwery*4/100),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom:5),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.blue,
                        ))),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Register', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.black87),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black54,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22,bottom:30),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black87),
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.black54,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    Text(
                      'Remmber password',
                      style: TextStyle(
                          color: Colors.black, fontSize: mediaQwery * 4 / 100,),
                    ),
                    SizedBox(
                      width: mediaQwery * 5 / 100,
                    ),
                    Text(
                      'Forget password',
                      style: TextStyle(
                          color: Colors.blue, fontSize: mediaQwery * 4 / 100),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        minimumSize: Size(
                            mediaQwery * 100 / 100, mediaQwery * 11 / 100)),
                    onPressed: () {},
                    child: Text('Login',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ),
                Text('or connect with',
                    style: TextStyle(
                      fontSize: mediaQwery*5/100,
                    )),
                SizedBox(
                  height:mediaQwery*5/100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 2),
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: SvgPicture.asset(
                        'images/facebook_logo_icon.svg',
                        // color: Colors.red,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2),
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: SvgPicture.asset(
                        'images/asaas.svg',
                        color: Colors.red,
                      ),
                    ),
                    // Container(
                    //   // margin: EdgeInsets.only(left: 5),
                    //   width: 50,
                    //   height: 50,
                    //   padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    //   child: SvgPicture.asset(
                    //     'images/Instgram.svg',
                    //     color: Colors.red,
                    //   ),
                    // ),
                    // Container(
                    //   // margin: EdgeInsets.only(left: 5),
                    //   width: 50,
                    //   height: 150,
                    //   padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    //   child: SvgPicture.asset(
                    //     'images/Instgram.svg',
                    //     color: Colors.red,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            width: 30,
            child: SvgPicture.asset(
              'images/facebook_logo_icon.svg',
              color: Colors.blue,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 30,
            child: SvgPicture.asset(
              'images/facebook_logo_icon.svg',
              color: Colors.green,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: mediaQwery * 185 / 100),
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                width: mediaQwery * 100 / 100,
                height: mediaQwery * 44 / 100,
                color: Colors.blueAccent,
                // margin: EdgeInsets.only(top:mediaQwery*1/100,left: mediaQwery*5.5/100),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.quadraticBezierTo(w*5/100,h*0.1,w*15/100,h*0.2);
    path.quadraticBezierTo(w*25/100,h*0.3,w*35/100,h*0.4);
    path.quadraticBezierTo(w*45/100,h*0.5,w*55/100,h*0.5);
    path.quadraticBezierTo(w*60/100,h*0.5,w*65/100,h*0.5);
    path.quadraticBezierTo(w*75/100,h*0.4,w*85/100,h*0.3);
    path.quadraticBezierTo(w*95/100,h*0.2,w,h*0.1);
    path.lineTo(w,h);
    path.lineTo(0,h);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
