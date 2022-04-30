import 'package:flutter/material.dart';
import 'package:tp_flutter/choice_item.dart';

import 'footer.dart';
import 'header.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<ChoiceItem> _choices = [
    ChoiceItem(text: "cinéma"),
    ChoiceItem(text: "Overwatch"),
    ChoiceItem(text: "sushi"),
    ChoiceItem(text: "course à pied"),
    ChoiceItem(text: "Seigneurs des Anneaux"),
    ChoiceItem(text: "Victor Hugo"),
    ChoiceItem(text: "peinture"),
    ChoiceItem(text: "cuisine"),
    ChoiceItem(text: "Twitch"),
    ChoiceItem(text: "Netflix"),
    ChoiceItem(text: "lecture"),
    ChoiceItem(text: "comics", isEnabled: false,),
    ChoiceItem(text: "Flutter"),
    ChoiceItem(text: "Stephen King", isEnabled: false,),
    ChoiceItem(text: "hexakosioihexekontahexaphobique")
  ];

  List<ChoiceItem> _choicesSelected = [];

  void _onTapChoice() {
    setState(() {
      _choicesSelected = _choices
          .where((item) => item.isSelected)
          .map((e) => ChoiceItem(text: e.text, isEnabled: false))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    _choices.forEach((element) => element.onTap = _onTapChoice);
    return Scaffold(
      body: Column(
        children: [
          Header(
            choicesSelected: _choicesSelected,
          ),
          Footer(
            choices: _choices.where((item) => item.isEnabled).toList(),
          )
        ],
      ),
    );
  }
}
