import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChoiceChipDisplay extends StatefulWidget {
  const ChoiceChipDisplay({Key? key}) : super(key: key);

  @override
  ChoiceChipDisplayState createState() => ChoiceChipDisplayState();
}

class ChoiceChipDisplayState extends State<ChoiceChipDisplay> {
  List<String> chipList = [
    "Recycled",
    "Vegetarian",
    "Skilled",
    "Energetic",
    "Friendly",
    "Luxurious"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              FontAwesomeIcons.xmark,
              color: Colors.black,
            ),
            onPressed: () {}),
        title: const Text(
          "Synonym Flashcards",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                FontAwesomeIcons.noteSticky,
                color: Colors.black,
              ),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: SizedBox(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color(0xffffc107),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 3',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(
                      'Find the synonym of',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(
                      'Adroit',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 42.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                SizedBox(
                    child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    ChoiceChipWidget(chipList),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffffbf00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChoiceChipWidget extends StatefulWidget {
  final List<String> reportList;

  const ChoiceChipWidget(this.reportList, {Key? key}) : super(key: key);

  @override
  ChoiceChipWidgetState createState() => ChoiceChipWidgetState();
}

class ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = [];
    for (var item in widget.reportList) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: const Color(0xffededed),
          selectedColor: const Color(0xffffc107),
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    }
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
