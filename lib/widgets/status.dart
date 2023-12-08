import 'package:flutter/material.dart';
import '../../constant/utils.dart';
class Status extends StatefulWidget {
  final String value;
  final String title;
  const Status({super.key, required this.value, required this.title});


  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  String status = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: widget.value,
            groupValue: this.status,
            onChanged: ((String? value){
              if(value != null){
                setState(() {
                  this.status = value;
                  print(status);
                });
              }
            })),
        Text(widget.title,style: introStyle)
      ],
    );
  }
}
