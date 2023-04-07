import 'package:flutter/material.dart';

class Registractionform extends StatefulWidget {
  String name;
  String age;
  String address;
  int isclicked;
  bool isclicked1;
  bool isclicked2;
  bool isclicked3;

  Registractionform(
      {required this.name,
      required this.age,
      required this.address,
      required this.isclicked,
      required this.isclicked1,
      required this.isclicked2,
      required this.isclicked3});

  @override
  State<Registractionform> createState() => _RegistractionformState();
}

class _RegistractionformState extends State<Registractionform> {
  String? gender;
  String c1="";
  String c2="";
  String c3="";

  void datas()
  {
if(widget.isclicked==1)
  {
  setState(() {
    gender="male";
  });
  }
else{
  setState(() {
    gender="femaile";
  });
}
if(widget.isclicked1==true)
  {
   setState(() {
     c1="English";
   });
  }
if(widget.isclicked2==true)
{
  setState(() {
    c2="Malayalam";
  });
}
if(widget.isclicked3==true)
{
  setState(() {
    c3="Hindhi";
  });
}
  }
@override
  void initState() {
    datas();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Center(
   child: Container(
     height: 300,
     width: 200,
     decoration: BoxDecoration(border: Border.all(color: Colors.black)),
     child: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [

       Text(widget.name),
       Text(widget.age),
       Text(widget.address),
       Text(gender!),
       Text(c1),
       Text(c2),
       Text(c3),
     ],),
   ),
 ),
    );
  }
}
