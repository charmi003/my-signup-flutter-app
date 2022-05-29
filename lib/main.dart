import 'package:flutter/material.dart';
import 'package:my_signup_app/SignUpPage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'My signup App',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(),
      home:SignUpPage(),
      
    );
  }
}