import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SavedPlaces extends StatefulWidget {
  const SavedPlaces({Key? key}) : super(key: key);

  @override
  State<SavedPlaces> createState() => _SavedPlacesState();
}

class _SavedPlacesState extends State<SavedPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Saved Places")),
      floatingActionButton: NeumorphicFloatingActionButton(child: Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Your City"),
                    Text("giovedi, 23, 2022"),
                  ],
                ),
                Expanded(child: SizedBox()),
                TextButton(onPressed: null, child: Text("°F")),
                TextButton(onPressed: null, child: Text("°C")),
                
              ],
            ),
            SavedPlace(),
            SavedPlace(),
            SavedPlace(),
            SavedPlace(),
            SavedPlace(),
            SavedPlace(),
          ],
        ),
      ),
    );
  }

  Widget SavedPlace() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Neumorphic(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.sunny),
                  const Text("New York"),
                  Text(DateTime.now().hour.toString() +
                      ":" +
                      DateTime.now().minute.toString()),
                ],
              ),
            ),
                  Expanded(child: SizedBox()),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [Text("12°")],
              ),
            )
          ],
        ),
      ),
    );
  }
}
