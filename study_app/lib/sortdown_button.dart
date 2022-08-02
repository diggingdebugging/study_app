//정렬버튼
import 'package:flutter/material.dart';

class sortDownButton extends StatefulWidget {
  @override
  _sortDownButtonState createState() => _sortDownButtonState();
}

class _sortDownButtonState extends State<sortDownButton> {
  final List<String> items = <String>['별점', '최신', '리뷰', '거리'];
  late String valueChoose = items[0];
  String showTitle = "정렬";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      borderRadius: BorderRadius.circular(10),
      alignment: Alignment.centerRight,
      icon: const Icon(Icons.sort_sharp),
      value: valueChoose,
      elevation: 16,
      onChanged: (String? newValue) {
        setState(() {
          valueChoose = newValue!;
        });
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: SizedBox(
            width: 40,
            child: Text(value, textAlign: TextAlign.center),
          ),
        );
      }).toList(),
    );
  }
}
