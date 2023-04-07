import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedpreferance2 extends StatefulWidget {
  const Sharedpreferance2({Key? key}) : super(key: key);

  @override
  State<Sharedpreferance2> createState() => _Sharedpreferance2State();
}

class _Sharedpreferance2State extends State<Sharedpreferance2> {
 var datas;
  displaydata()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
   datas=await sharedPreferences.getString("username");
   print(datas);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        displaydata();
      },child: Text(""),),
      body: Center(child: Text("Home"),),
    );
  }
}
