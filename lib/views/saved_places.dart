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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text("Saved Places")),
      body: Container(
        height: height,
        width: width,
        child: 
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text("Prova Dio Cane"),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text("data"),
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [Text("Proveh")],
        //         )
        //       ],
        //     )
        //   ],
        // ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your City"),
                  Text("giovedi, 23, 2022"),
                ],
              ),
              Column(children: [
                TextButton(onPressed: null, child: Text("°F")),
                  TextButton(onPressed: null, child: Text("°C")),
                
              ],),
                  
              
            ],
          ),
          Row(
          children: [
            Column(
              children: [
                Icon(Icons.sunny),
                Text("new York"),
                Text(DateTime(DateTime.now().hour, DateTime.now().minute)
                    .toString()),
              ],
            ),
            Column(
          children: [Expanded(child: Text("12°"))],
        )
          ],
        )
          // SavedPlace()
          // Row(children: [Text("data")],)
          //  Row(
          //     children: [SavedPlace(), SavedPlace(), SavedPlace(), SavedPlace()],
          //   ),

        ],
        ),
      ),
    );
  }

  Row SavedPlace() {
    return 
        Row(
          children: [
            Column(
              children: [
                Icon(Icons.sunny),
                Text("new York"),
                Text(DateTime(DateTime.now().hour, DateTime.now().minute)
                    .toString()),
              ],
            ),
            Column(
          children: [Expanded(child: Text("12°"))],
        )
          ],
        );
  }
}
