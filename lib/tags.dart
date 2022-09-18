// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String?> list = ['Java', 'Flutter', 'Kotlin', 'Swift', 'Objective-C'],
      selected = [];
  TextEditingController? tc;

  @override
  void initState() {
    super.initState();
    tc = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Search Tags'),
        backgroundColor: Colors.green[800],
      ),
      body: Column(
//         mainAxisSize:MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tc,
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
                                  backgroundColor: Colors.blue[100],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  label: Text(s!,
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
            ),
            const SizedBox(height: 20),
            // ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: list.length,
            //     itemBuilder: (c, i) {
            //       return list[i]!.toLowerCase().contains(tc?.text.toLowerCase())
            //           ? ListTile(
            //               title: Text(list[i],
            //                   style: TextStyle(color: Colors.blue[900])),
            //               onTap: () {
            //                 setState(() {
            //                   if (!selected.contains(list[i]))
            //                     selected.add(list[i]);
            //                 });
            //               })
            //           : null;
            //     })
          ]),
    );
  }
}
