// import 'package:flutter/material.dart';
// import 'package:flutter_chips_input/flutter_chips_input.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final _chipKey = GlobalKey<ChipsInputState>();

//   @override
//   Widget build(BuildContext context) {
//     const mockResults = <Categories>[
//       Categories(
//         'STUDY',
//       ),
//       Categories(
//         'TRAVEL',
//       ),
//       Categories(
//         'FOOD',
//       ),
//       Categories(
//         'GROCERIES',
//       ),
//       Categories(
//         'MISC',
//       ),
//     ];

//     return Scaffold(
//       appBar: AppBar(title: const Text('Flutter Chips Input Example')),
//       resizeToAvoidBottomInset: false,
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               ChipsInput(
//                 key: _chipKey,
//                 /*initialValue: [
//                   Categories('John Doe', 'jdoe@flutter.io',
//                       'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg'),
//                 ],*/
//                 // autofocus: true,
//                 // allowChipEditing: true,
//                 keyboardAppearance: Brightness.dark,
//                 textCapitalization: TextCapitalization.words,
//                 // enabled: false,
//                 // maxChips: 5,
//                 textStyle: const TextStyle(
//                     height: 1.5, fontFamily: 'Roboto', fontSize: 16),
//                 decoration: const InputDecoration(
//                   // prefixIcon: Icon(Icons.search),
//                   // hintText: formControl.hint,
//                   labelText: 'Select Category',
//                   // enabled: false,
//                   // errorText: field.errorText,
//                 ),
//                 findSuggestions: (String query) {
//                   // print("Query: '$query'");
//                   if (query.isNotEmpty) {
//                     var lowercaseQuery = query.toLowerCase();
//                     return mockResults.where((profile) {
//                       return profile.name
//                           .toLowerCase()
//                           .contains(query.toLowerCase());
//                     }).toList(growable: false)
//                       ..sort((a, b) => a.name
//                           .toLowerCase()
//                           .indexOf(lowercaseQuery)
//                           .compareTo(
//                               b.name.toLowerCase().indexOf(lowercaseQuery)));
//                   }
//                   // return <Categories>[];
//                   return mockResults;
//                 },
//                 onChanged: (data) {
//                   // print(data);
//                 },
//                 chipBuilder: (context, state, dynamic profile) {
//                   return InputChip(
//                     key: ObjectKey(profile),
//                     label: Text(profile.name),
//                     avatar: CircleAvatar(
//                         // backgroundImage: NetworkImage(profile.imageUrl),
//                         ),
//                     onDeleted: () => state.deleteChip(profile),
//                     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                   );
//                 },
//                 suggestionBuilder: (context, state, dynamic profile) {
//                   return ListTile(
//                     key: ObjectKey(profile),
//                     leading: CircleAvatar(
//                         // backgroundImage: NetworkImage(profile.imageUrl),
//                         ),
//                     title: Text(profile.name),
//                     onTap: () => state.selectSuggestion(profile),
//                   );
//                 },
//               ),
//               const TextField(),
//               /*ChipsInput(
//                 initialValue: [
//                   Categories('John Doe', 'jdoe@flutter.io',
//                       'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg'),
//                 ],
//                 enabled: true,
//                 maxChips: 10,
//                 textStyle: TextStyle(height: 1.5, fontFamily: "Roboto", fontSize: 16),
//                 decoration: InputDecoration(
//                   // prefixIcon: Icon(Icons.search),
//                   // hintText: formControl.hint,
//                   labelText: "Select Category",
//                   // enabled: false,
//                   // errorText: field.errorText,
//                 ),
//                 findSuggestions: (String query) {
//                   if (query.length != 0) {
//                     var lowercaseQuery = query.toLowerCase();
//                     return mockResults.where((profile) {
//                       return profile.name
//                           .toLowerCase()
//                           .contains(query.toLowerCase());
//                     }).toList(growable: false)
//                       ..sort((a, b) => a.name
//                           .toLowerCase()
//                           .indexOf(lowercaseQuery)
//                           .compareTo(
//                           b.name.toLowerCase().indexOf(lowercaseQuery)));
//                   } else {
//                     return mockResults;
//                   }
//                 },
//                 onChanged: (data) {
//                   print(data);
//                 },
//                 chipBuilder: (context, state, profile) {
//                   return InputChip(
//                     key: ObjectKey(profile),
//                     label: Text(profile.name),
//                     avatar: CircleAvatar(
//                       backgroundImage: NetworkImage(profile.imageUrl),
//                     ),
//                     onDeleted: () => state.deleteChip(profile),
//                     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                   );
//                 },
//                 suggestionBuilder: (context, state, profile) {
//                   return ListTile(
//                     key: ObjectKey(profile),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(profile.imageUrl),
//                     ),
//                     title: Text(profile.name),
                    
//                     onTap: () => state.selectSuggestion(profile),
//                   );
//                 },
//               ),*/
//               ElevatedButton(
//                 onPressed: () {
//                   _chipKey.currentState!.selectSuggestion(const Categories(
//                     'Gina',
//                   ));
//                 },
//                 child: const Text('Add Chip'),
//               ),
//             ],
//           ),
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class Categories {
//   final String name;

//   const Categories(
//     this.name,
//   );

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Categories &&
//           runtimeType == other.runtimeType &&
//           name == other.name;

//   @override
//   int get hashCode => name.hashCode;

//   @override
//   String toString() {
//     return name;
//   }
// }
