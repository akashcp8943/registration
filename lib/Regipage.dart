import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class Reg2 extends StatefulWidget {
  const Reg2({super.key});

  @override
  State<Reg2> createState() => _Reg2State();
}

class _Reg2State extends State<Reg2> {
  final formkey = GlobalKey<FormState>();

  var name = TextEditingController();
  var email =  TextEditingController();
  var password =TextEditingController();
  String gender = 'male';
  String dropdownvalue = 'KASARAGOD';
  var district=[
    'KASARAGOD',
    'KANNUR',
    'WAYANAD',
    'KOZHIKODE',
    'MALAPPURAM',
    'PALAKKAD',
    'THRISSUR',
    'ERNAKULAM',
    'IDUKKI',
    'KOTTAYAM',
    'ALAPPUZHA',
    'PATHANAMTHITTA',
    'KOLLAM',
    'THIRUVANANTHAPURAM'

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
                  padding: const EdgeInsets.only(top: 10,bottom: 10,left: 56,right: 56),
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:30,bottom:15,right:56,left:56),
                      child: Text("Gender",style: TextStyle(fontWeight:FontWeight.bold,fontSize:15)),
                    ),
                  ],
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:15,bottom:15,left: 56,right: 56),
                      child: Text("select district",style: TextStyle(fontWeight:FontWeight.bold,fontSize:15)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:1,bottom: 30,left:30,right: 56),
                      child: DropdownButton(
                          value: dropdownvalue,
                          icon:const Icon(Icons.arrow_drop_down) ,
                          items: district.map((String district)
                          {
                            return DropdownMenuItem(value: district,child:Text(district),
                            );

                          }).toList(),
                          onChanged: (String?newValue){
                            setState(() {
                              dropdownvalue=newValue!;
                            });
                          }),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(onPressed: (){
                    //Fluttertoast.showToast(msg: "Success");
                    if(formkey.currentState!.validate()){
                      Navigator.push(context,MaterialPageRoute(builder: (context) {
                        return Reg2();
                      },
                      ));
                    }
                    print(name.text);
                    print(email.text);
                    print(password.text);
                  }, child:Text("Submit")),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}