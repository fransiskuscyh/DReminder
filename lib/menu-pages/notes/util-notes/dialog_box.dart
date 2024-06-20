import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/menu-pages/notes/util-notes/my_button.dart';

class DialogBox extends StatelessWidget {
  final dialogController;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.dialogController,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
          TextFormField(
            controller: dialogController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Type notes",
              
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: "Save", onPressed: onSave),
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ],),
      ),
    );
  }
}