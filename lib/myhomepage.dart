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
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: Image(image: assets/images/passimg.JPG),
          ),
          // AssetImage("assets/images/passimg.JPG"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
              onChanged: (value){email=value;},
              validator:(value){
                if(value!.isEmpty){return "email cannot be empty";}
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                  decoration: InputDecoration(
                 
                    prefixIcon: Icon(Icons.lock),
            labelText:"password", 
            hintText: "inter your password",
            border: OutlineInputBorder()
            
                  ),
              obscureText: true,
              onChanged: (value){password=value;},
              validator:(value){
                if(value!.isEmpty){return "Password cannot be empty";}
                if(value.length<6){
                  return "password should have atleast 6 digits";
                }
              },
            ),
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
