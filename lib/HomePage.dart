import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final String name,email,mobile,collegeName,password;
  const HomePage({ Key? key, required this.name, required this.mobile, required this.email, required this.collegeName, required this.password }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar:AppBar(
        title:Text('Students Info')
      ),
      body:Form(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
            ),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              const Image(
                image:AssetImage("images/logo.png"),
                height: 100.0,
                width:100.0
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(name)
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(email)
              ),
              ListTile(
                leading: Icon(Icons.password),
                title: Text(password)
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(mobile)
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text(collegeName)
              )
            ],
          ),
        ),
      )
    );
  }
}

