import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotesTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  NotesTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.update,
              backgroundColor: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(12),
              foregroundColor: Colors.white,
              ),
              SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(12),
              foregroundColor: Colors.white,
              ),
            ],
          ),
        child: Container(
          padding: EdgeInsets.all(30),
          child: Row(
            children: [
              // Checkbox(
              //   value: taskCompleted, 
              //   onChanged: onChanged,
              //   activeColor: Colors.black,
              // ),
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskCompleted
                    ? TextDecoration.overline
                    : TextDecoration.none,
                  ),
                ),
          
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(15)
          ),
        )
      ),);
    }
  }