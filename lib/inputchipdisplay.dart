import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputChipDisplay extends StatefulWidget {
  const InputChipDisplay({Key? key}) : super(key: key);

  @override
  InputChipDisplayState createState() => InputChipDisplayState();
}

class InputChipDisplayState extends State<InputChipDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _myAppBar(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _toContainer(),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: _subjectContainer(),
          ),
          const Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: _messageContainer(),
          ),
        ],
      ),
    );
  }

  Widget _messageContainer() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        child: Text(
          'Message',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
      ),
    );
  }

  Widget _myAppBar() {
    return Container(
      height: 70.0,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff662d8c),
            Color(0xffed1e79),
          ],
          begin: Alignment.centerRight,
          end: Alignment(-1.0, -1.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SizedBox(
                child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.arrowLeft,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      //
                    }),
              ),
            ),
            const Expanded(
              flex: 5,
              child: SizedBox(
                child: Text(
                  'Compose',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.locationArrow,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      //
                    }),
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget _toContainer() {
    return Wrap(
      spacing: 5.0,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 8.0, right: 8.0),
          child: Text(
            'To',
            style: TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ),
        Container(
          child: _profileChips("Scott Hill",
              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
        ),
        Container(
          child: _profileChips("Nick James",
              "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
        ),
        Container(
          child: _profileChips("Josh Wells",
              "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
        ),
      ],
    );
  }

  Widget _subjectContainer() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        child: Text(
          'Subject',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
      ),
    );
  }

  Widget _profileChips(String myName, String myImage) {
    return InputChip(
      avatar: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(myImage),
              )),
        ),
      ),
      label: Text(myName),
      labelStyle: const TextStyle(
          color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
      onPressed: () {},
      onDeleted: () {},
    );
  }
}
