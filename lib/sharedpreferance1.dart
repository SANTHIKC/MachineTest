import 'package:flutter/material.dart';
import 'package:mocktest/sharedpreferance2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedpreferance1 extends StatefulWidget {
  const Sharedpreferance1({Key? key}) : super(key: key);

  @override
  State<Sharedpreferance1> createState() => _Sharedpreferance1State();
}

class _Sharedpreferance1State extends State<Sharedpreferance1> {
  TextEditingController usernamecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  setdata()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setString("username",usernamecontroller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: usernamecontroller,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(onPressed: (){
              setdata();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Sharedpreferance2();
              },));
            }, child: Text("login"))
          ],
        ),
      ),
    );
  }
}

