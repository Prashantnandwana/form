import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var email ;
  var password;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formkey, child: Column(
        children: [
          TextFormField(
            onChanged: (value){email=value;},
            validator:(value){
              if(value!.isEmpty){return "email cannot be empty";}
            },
          ),
          TextFormField(
            onChanged: (value){password=value;},
            validator:(value){
              if(value!.isEmpty){return "Password cannot be empty";}
            },
          ),
          ElevatedButton(onPressed: (){if(
            _formkey.currentState!.validate()){
              print("Your Account Created");
            }}, child: Text("Sign Up")),
        ],
      )),
    );
  }
}
