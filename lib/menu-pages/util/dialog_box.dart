import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu-pages/util/my_button.dart';

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
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
          TextField(
            controller: dialogController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task"
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