import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Twitter",
    home: MyWidget(),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Halo Semua",style: TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}