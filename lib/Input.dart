import 'package:flutter/material.dart';

class InputChipExample extends StatefulWidget {
  const InputChipExample({Key? key}) : super(key: key);

  @override
  InputChipExampleState createState() => InputChipExampleState();
}

class InputChipExampleState extends State<InputChipExample> {
  final TextEditingController _textEditingController = TextEditingController();
  String textInputController = '';

  List<String> _values = ['mangoes', 'potato', 'rabbit'];
  // List<bool> _selected = [];
  List<Widget> chips = [];

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // _textEditingController.text = 'This is Sparta';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Woolha.com Flutter Tutorial'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _textEditingController,
                onFieldSubmitted: (value) {
                  _values.add(_textEditingController.text);
                  // _selected.add(true);
                  _textEditingController.clear();

                  setState(() {
                    _values = _values;
                    // _selected = _selected;
                  });
                  print(textInputController);
                },
                decoration: InputDecoration(
                  prefix: Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      // child: Text('City Initial'),
                    ),
                    label: Text(textInputController),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 30,
                margin: const EdgeInsets.all(10),
                child: buildChips(),
              ),
            ],
          )),
    );
  }

  Widget buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _values.length; i++) {
      InputChip actionChip = InputChip(
        // selected: _selected[i],
        label: Text(_values[i]),
        avatar: const FlutterLogo(),
        elevation: 0,
        pressElevation: 0,
        shadowColor: Colors.teal,
        onPressed: () {
          setState(() {
            textInputController = _values[i];
            // _selected[i] = !_selected[i];
          });
          // print(textInputController);
        },
        onDeleted: () {
          _values.removeAt(i);
          // _selected.removeAt(i);

          setState(() {
            _values = _values;
            // _selected = _selected;
          });
        },
      );

      chips.add(actionChip);
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }
}
