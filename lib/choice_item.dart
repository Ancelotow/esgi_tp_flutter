import 'package:flutter/material.dart';

class ChoiceItem extends StatefulWidget {
  final String text;
  bool isSelected;
  bool isEnabled;
  Function()? onTap;

  ChoiceItem(
      {Key? key, required this.text, this.isSelected = false, this.onTap, this.isEnabled = true})
      : super(key: key);

  @override
  _ChoiceItemState createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(widget.isEnabled) {
          setState(() {
            widget.isSelected = !widget.isSelected;
          });
          widget.onTap?.call();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.00),
          color: getColor(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.text),
        ),
      ),
    );
  }

  Color getColor(){
    if(widget.isSelected && widget.isEnabled) {
      return Colors.amber;
    }
    return Colors.grey;
  }
}
