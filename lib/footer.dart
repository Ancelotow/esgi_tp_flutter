import 'package:flutter/material.dart';

import 'choice_item.dart';

class Footer extends StatelessWidget {
  List<ChoiceItem> choices;

  Footer({Key? key, required this.choices}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 5.00,
              runSpacing: 5.00,
              children: choices,
            ),
          )),
    );
  }
}
