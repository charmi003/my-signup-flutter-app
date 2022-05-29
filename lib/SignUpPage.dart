import 'package:flutter/material.dart';
import 'package:my_signup_app/HomePage.dart';
import 'package:my_signup_app/Sample.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  String name='';
  String email='';
  String mobile='';
  String collegeName='';
  String password='';

  GlobalKey<FormState> _key=GlobalKey();

  _sendToNextScreen(){
    if(_key.currentState!.validate())
    {
      //saves to global key
      _key.currentState!.save();
      
      //?send to next screen
      Navigator.push(context, 
        MaterialPageRoute(builder: (context)=>HomePage(
          name: name,
          email: email,
          mobile: mobile,
          collegeName: collegeName,
          password: password
        ))
      );

      //?sending data to a stateful widget
      // Navigator.push(context,
      // MaterialPageRoute(builder: (context)=>Sample(
      //   name:name
      // ))
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text("SignUp"),
      ),
      body:SingleChildScrollView(
        child: Form(
          key: _key,
          child:Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const Padding(padding: EdgeInsets.all(10)),
                const Image(
                  image:AssetImage("images/logo.png"),
                  height: 100.0,
                  width:100.0
                ),
                ListTile(
                  leading:Icon(Icons.person),
                  title:TextFormField(
                    validator: (input){
                      if(input!.isEmpty) {
                        return 'Enter Name';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Name'
                    ),
                    onSaved: (input) => name=input!,
                  )
                ),
                ListTile(
                  leading:Icon(Icons.email),
                  title:TextFormField(
                    validator: (input){
                      if(input!.isEmpty) {
                        return 'Enter Email';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email'
                    ),
                    onSaved: (input) => email=input!,
                  )
                ),
                ListTile(
                  leading:Icon(Icons.password),
                  title:TextFormField(
                    validator: (input){
                      if(input!.isEmpty) {
                        return 'Enter Password';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Password'
                    ),
                    onSaved: (input) => password=input!,
                    obscureText: true,
                  )
                ),
                ListTile(
                  leading:Icon(Icons.phone),
                  title:TextFormField(
                    validator: (input){
                      if(input!.isEmpty) {
                        return 'Enter Mobile';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Mobile'
                    ),
                    onSaved: (input) => mobile=input!,
                  )
                ),
                ListTile(
                  leading:Icon(Icons.school),
                  title:TextFormField(
                    validator: (input){
                      if(input!.isEmpty) {
                        return 'Enter College Name';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'College Name'
                    ),
                    onSaved: (input) => collegeName=input!,
                  )
                ),
                const Padding(padding: EdgeInsets.all(15)),
                ElevatedButton(
                  onPressed: (){_sendToNextScreen();},
                  child:const Text('Submit', style:TextStyle(color:Colors.white, fontSize: 20.0),),
                  style:ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                    )),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                    padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(50, 15, 50, 15))
                  )
                ),
                const Padding(padding: EdgeInsets.all(10)),
              ],
            ),
          )
        ),
      )
    );
  }
}