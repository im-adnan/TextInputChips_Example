import 'package:flutter/material.dart';

class InputChipExample extends StatefulWidget {
  const InputChipExample({Key? key}) : super(key: key);

  @override
  InputChipExampleState createState() => InputChipExampleState();
}

class InputChipExampleState extends State<InputChipExample> {
  final TextEditingController _textEditingController = TextEditingController();

  List<String> _values = [], selected = [];
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
        title: const Text('Chips Example Adnan'),
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
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  // ignore: prefer_is_empty
                  prefixIcon: selected.length < 1
                      ? null
                      : Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Wrap(
                            spacing: 5,
                            runSpacing: 5,
                            children: selected.map(
                              (s) {
                                return Chip(
                                  avatar: const FlutterLogo(),
                                  elevation: 0,
                                  shadowColor: Colors.teal,
                                  // pressElevation: 0,
                                  // backgroundColor: Colors.blue[100],
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(7),
                                  // ),
                                  label: Text(s,
                                      style:
                                          TextStyle(color: Colors.blue[900])),
                                  onDeleted: () {
                                    setState(
                                      () {
                                        selected.remove(s);
                                      },
                                    );
                                  },
                                );
                              },
                            ).toList(),
                          ),
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
            if (!selected.contains(_values[i])) selected.add(_values[i]);
            // _textEditingController.text = _values[i];
            // _selected[i] = !_selected[i];
          });
          // print(_textEditingController.text);
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
      // This line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }
}
