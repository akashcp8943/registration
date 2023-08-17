import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Justkey extends StatefulWidget {
  const Justkey({super.key});

  @override
  State<Justkey> createState() => _JustkeyState();
}

class _JustkeyState extends State<Justkey> {
  XFile? pickedfile;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          ElevatedButton(onPressed: () async {
            ImagePicker picker = ImagePicker();
            pickedfile = await picker.pickImage(source: ImageSource.gallery);
            setState(() {
              image = File(pickedfile!.path);
            });
          },
              child: Text("select")
          ),Text(image==null?'':pickedfile!.name),
          image==null?Text('data'):Image.file(image!)
        ],
      ),
      ),
    );
  }
}
