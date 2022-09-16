import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterChipDisplay extends StatefulWidget {
  const FilterChipDisplay({Key? key}) : super(key: key);

  @override
  FilterChipDisplayState createState() => FilterChipDisplayState();
}

class FilterChipDisplayState extends State<FilterChipDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              FontAwesomeIcons.xmark,
              color: Colors.white,
            ),
            onPressed: () {}),
        title: const Text(
          "Filter Result",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                FontAwesomeIcons.house,
                color: Colors.white,
              ),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer("Choose amenities"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  child: Wrap(
                spacing: 5.0,
                runSpacing: 3.0,
                children: const <Widget>[
                  FilterChipWidget(chipName: 'Elevator'),
                  FilterChipWidget(chipName: 'Washer/Dryer'),
                  FilterChipWidget(chipName: 'Fireplace'),
                  FilterChipWidget(chipName: 'Dogs ok'),
                  FilterChipWidget(chipName: 'Cats ok'),
                  FilterChipWidget(chipName: 'Wheelchair access'),
                ],
              )),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer('Choose Neighborhoods'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: const <Widget>[
                    FilterChipWidget(chipName: 'Upper Manhattan'),
                    FilterChipWidget(chipName: 'Manhattanville'),
                    FilterChipWidget(chipName: 'Harlem'),
                    FilterChipWidget(chipName: 'Washington Heights'),
                    FilterChipWidget(chipName: 'Inwood'),
                    FilterChipWidget(chipName: 'Morningside Heights'),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: const TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

class FilterChipWidget extends StatefulWidget {
  final String chipName;

  const FilterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  FilterChipWidgetState createState() => FilterChipWidgetState();
}

class FilterChipWidgetState extends State<FilterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: const TextStyle(
          color: Color(0xff6200ee),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: const Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: const Color(0xffeadffd),
    );
  }
}
