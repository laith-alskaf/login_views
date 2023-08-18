import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginViewLandSpace extends StatefulWidget {
  const LoginViewLandSpace({Key? key}) : super(key: key);

  @override
  _LoginViewLandSpaceState createState() => _LoginViewLandSpaceState();
}

class _LoginViewLandSpaceState extends State<LoginViewLandSpace> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Container(
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topLeft,
                    radius: 5,
                        colors: [ Color.fromRGBO(217, 17, 217, 1.2),
                      Colors.white70,
                      Colors.white,
                      Colors.white70,
                      Colors.white10,
                      Colors.white12,
                      Colors.white12,
                      Colors.white12,]
                    )),
            child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 8 / 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenWidth * 6/ 100,
                              bottom: screenWidth * 0.7 / 100),
                          child: Text(
                            'Welcome Back!',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: screenWidth * 8 / 100,
                              fontWeight: FontWeight.bold,
                              // decoration: TextDecoration.underline
                            ),
                          ),
                        ),
                        Text(
                          'Enter your credentials to continue',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: screenWidth * 5.6 / 100,
                          ),
                        ),
                        Container(
                          width:double.infinity,
                          padding: EdgeInsets.only(
                            top: screenWidth * 10 / 100,
                            bottom: screenWidth * 3.2 / 100,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                ),
                                hintText: 'Email Address',
                                hintStyle: TextStyle(color: Colors.black87),
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.black54,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 108 / 100,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black87),
                              prefixIcon: Icon(
                                Icons.lock_outline_rounded,
                                color: Colors.black54,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenWidth * 5.5 / 100,
                              horizontal: screenWidth * 2 / 100),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.pink),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(
                                  top: screenWidth * 3 / 100,
                                  bottom: screenWidth * 3 / 100),
                              minimumSize: Size(screenWidth * 108 / 100,
                                  screenWidth * 16 / 100)),
                          onPressed: () {},
                          child: Text('Login',
                              style: TextStyle(
                                fontSize: screenWidth * 5 / 100,
                              )),
                        ),
                      ],
                    ),
                  )
                ]),
            VerticalDivider(
                thickness: 1.1,
                color: Colors.pink,
                endIndent: screenWidth * 7 / 100,
                indent: screenWidth * 7 / 100),
            Column(children: [
              Padding(
                padding: EdgeInsets.only(
                    top: screenWidth * 15 / 100, left: screenWidth * 2 / 100),
                child: const Text(
                  'Or connect via',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    // left: 1,
                    // right: 1,
                    top: screenWidth * 4 / 100,
                    bottom: screenWidth * 2 / 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      width: screenWidth * 28 / 100,
                      height: screenWidth * 17 / 100,
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 4.5 / 100,
                          vertical: screenWidth * 4.5 / 100),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.black54, width: 1.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: SvgPicture.asset(
                        'images/google_logo_icon.svg',
                        // width: 70,
                        // height:50,
                      ),
                    ),
                    Container(
                      width: screenWidth * 28 / 100,
                      height: screenWidth * 17 / 100,
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 4.5 / 100,
                          vertical: screenWidth * 4.5 / 100),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.black54, width: 1.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: SvgPicture.asset(
                        'images/apple_logo_icon.svg',
                        // width: 70,
                        // height: 50,
                      ),
                    ),
                    Container(
                      width: screenWidth * 28 / 100,
                      height: screenWidth * 17 / 100,
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 4.5 / 100,
                          vertical: screenWidth * 4.5 / 100),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.black54, width: 1.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: SvgPicture.asset(
                        'images/facebook_logo_icon.svg',
                        // width:50,
                        // height:50,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //       height: screenWidth * 20 / 100,
              // ),
              Container(
                padding: EdgeInsets.only(left: screenWidth * 2 / 100, top: 20),
                child: Text(
                  'By logging you are agreening with our',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: screenWidth * 4.4 / 100,
                    height: 1,
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Terms of Use',
                  style: TextStyle(
                    color: Colors.pink,
                    decoration: TextDecoration.underline,
                    fontSize: screenWidth * 4.4 / 100,
                  ),
                ),
                Text(
                  ' and ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: screenWidth * 4.4 / 100,
                  ),
                ),
                Text('Privacy policy',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: screenWidth * 4.4 / 100,
                        decoration: TextDecoration.underline)),

              ]),

              Container(
               margin: EdgeInsets.only(top:screenWidth*20/100 ),
                height: screenWidth * 15 / 100,
                width: screenWidth*80/100,
                color: Colors.black12,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an account? ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: screenWidth * 4.8 / 100,
                        ),
                      ),
                      Text(
                        'Register?',
                        style: TextStyle(
                            fontSize: screenWidth * 4.5 / 100,
                            color: Colors.pink,
                            decoration: TextDecoration.underline),
                      ),
                    ]),
              ),

            ]),

            // SizedBox(
            //   height: 57.4,
            // ),
        ],
      ),
          )),
    );
  }
}
