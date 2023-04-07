import 'package:flutter/material.dart';
import 'package:mocktest/registractionform1.dart';

class Biodata1 extends StatefulWidget {
  const Biodata1({Key? key}) : super(key: key);

  @override
  State<Biodata1> createState() => _Biodata1State();
}

class _Biodata1State extends State<Biodata1> {
  TextEditingController nametextcontroller = TextEditingController();
  TextEditingController agetexcontroller = TextEditingController();
  TextEditingController addresstextcontroller = TextEditingController();
  int isclick = 0;
  bool genterclick = false;
  bool isclicked1 = false;
  bool isclicked2 = false;
  bool isclicked3 = false;
  bool hobiclick = false;
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Registraction Form"))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: nametextcontroller,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "enter name";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "name"),
                  ),

                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: agetexcontroller,
                    validator: (w) {
                      if (w!.isEmpty) {
                        return "enter age";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "age"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: addresstextcontroller,
                    validator: (x) {
                      if (x!.isEmpty) {
                        return "enter address";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "address"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Gender:"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Male"),
                      Radio(
                        value: 1,
                        groupValue: isclick,
                        onChanged: (v) {
                          setState(() {
                            genterclick = true;
                            isclick = v!;
                          });
                        },
                      ),
                      Text("Female"),
                      Radio(
                        value: 2,
                        groupValue: isclick,
                        onChanged: (v) {
                          setState(() {
                            genterclick = true;
                            isclick = v!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Languages"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("English"),
                      Checkbox(
                        value: isclicked1,
                        onChanged: (v) {
                          setState(() {
                            hobiclick = true;
                            isclicked1 = v!;
                          });
                        },
                      ),
                      Text("Malayalam"),
                      Checkbox(
                        value: isclicked2,
                        onChanged: (u) {
                          setState(() {
                            hobiclick = true;
                            isclicked2 = u!;
                          });
                        },
                      ),
                      Text("Hindhi"),
                      Checkbox(
                        value: isclicked3,
                        onChanged: (x) {
                          setState(() {
                            hobiclick = true;
                            isclicked3 = x!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      bool validate = formkey.currentState!.validate();
                      if (validate == false)
                      {
                        return;
                      }
                      if(genterclick==true&&hobiclick==true)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Registractionform(
                              name: nametextcontroller.text,
                              age: agetexcontroller.text,
                              address: addresstextcontroller.text,
                              isclicked1: isclicked1,
                              isclicked2: isclicked2,
                              isclicked3: isclicked3,
                              isclicked:  isclick,
                            );
                          },
                        ));
                      }
                    },
                    child: Text("submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
