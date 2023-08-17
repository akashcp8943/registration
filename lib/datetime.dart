import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datetimepick extends StatefulWidget {
  const Datetimepick({super.key});

  @override
  State<Datetimepick> createState() => _DatetimepickState();
}

class _DatetimepickState extends State<Datetimepick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () async {
                var d= await showDatePicker(context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1999,12,22),
                    lastDate: DateTime(2100,12,22));
                if(d!=null){
                  print(DateFormat("dd-MM-yyyy").format(d));
                }
              },child: Text("date"),
            ),
            ElevatedButton(onPressed: () async {
              var t= await showTimePicker(context: context,
                  initialTime:TimeOfDay.now());
              if(t!=null);{
                print(t!.format(context));
              }
            }, child: Text("time"))
          ],
        ),
      )
    );
  }
}
