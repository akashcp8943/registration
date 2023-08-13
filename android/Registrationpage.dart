import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Reg1 extends StatefulWidget {
  const Reg1({super.key});

  @override
  State<Reg1> createState() => _Reg1State();
}

class _Reg1State extends State<Reg1> {
  final formkey = GlobalKey<FormState>();

  var name = TextEditingController();
  var email =  TextEditingController();
  var password =TextEditingController();
  String gender = 'male';
  String dropdownvalue = 'kerala';
  var state=[
    'kerala',
    'tamilnadu',
    'karnataka',
    'mh',
    'pb',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 15,left: 56,right: 56),
                  child: TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return "Please enter the username";
                      }
                      return null;
                    },
                    controller: name,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                        labelText: ("Username")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 30,left: 56,right: 56),
                  child: TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return "Please enter correct email";
                      }
                      return null;
                    },

                    controller: email,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                        labelText: ("Email")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 30,left: 56,right: 56),
                  child: TextFormField(
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Please enter correct password";
                      }
                    },
                    controller: password,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                        labelText: ("Password")),
                  ),
                ),
                RadioListTile(title: Text("male"),value: "male", groupValue:gender, onChanged:(value){
                  setState(() {
                    gender=value.toString();
                  });
                }),
                RadioListTile(title: Text("female"),value: "female", groupValue:gender, onChanged:(value){
                  setState(() {
                    gender=value.toString();
                  });
                }),
                RadioListTile(title: Text("other"),value: "other", groupValue:gender, onChanged:(value){
                  setState(() {
                    gender=value.toString();
                  });
                }),
                DropdownButton(
                    value: dropdownvalue,
                    icon:const Icon(Icons.arrow_drop_down) ,
                    items: state.map((String state)
                    {
                      return DropdownMenuItem(value: state,child:Text(state),
                      );

                    }).toList(),
                    onChanged: (String?newValue){
                      setState(() {
                        dropdownvalue=newValue!;
                      });
                    }),
                ElevatedButton(onPressed: (){
                  Fluttertoast.showToast(msg: "Success");
                  if(formkey.currentState!.validate()){
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return Reg1();
                    },
                    ));
                  }
                  print(name.text);
                  print(email.text);
                  print(password.text);
                }, child:Text("Submit"))
              ],
            ),
          ),
        ),
      ),

    );
  }
}