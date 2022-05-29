import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  final String name;
  const Sample({ Key? key, required this.name }) : super(key: key);

  @override
  State<Sample> createState() => _SampleState(name:name);
}

class _SampleState extends State<Sample> {
  final String name;
  _SampleState({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text(name)
      )
    );
  }
}