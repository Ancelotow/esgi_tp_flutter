import 'package:flutter/material.dart';

import 'choice_item.dart';

class Header extends StatelessWidget {
  final List<ChoiceItem> choicesSelected;

  Header({Key? key, this.choicesSelected = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vos choix :",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 10,
              ),
              getBody(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget getBody(BuildContext context) {
    if (choicesSelected.isEmpty) {
      return Text(
        "Cliquez sur les choix en dessous !",
        style: Theme.of(context).textTheme.headline2,
      );
    }
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 5.00,
      runSpacing: 5.00,
      children: choicesSelected,
    );
  }
}
