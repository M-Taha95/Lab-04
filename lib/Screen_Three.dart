import 'package:flutter/material.dart';
import 'package:mylab4app/main.dart';

class Screen_Three extends StatefulWidget {
  const Screen_Three({super.key});

  @override
  State<Screen_Three> createState() => _Screen_ThreeState();
}

class _Screen_ThreeState extends State<Screen_Three> {
  List myItem2 = ["Eiffel Tower", "Louvre Museum", "Versailles Palace"];
  String mySelecteditem2 = "Louvre Museum";
  String tour = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2020/06/23/09/27/paris-street-with-eiffel-tour-5332005_1280.jpg"))),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            DropdownButton(
              dropdownColor: Color.fromARGB(255, 85, 183, 222),
              value: mySelecteditem2,
              items: myItem2
                  .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  mySelecteditem2 = val.toString();
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Mylab4App();
                      },
                    ));
                  });
                },
                child: Text("Go Bach to Home Page")),
            RadioListTile(
              secondary: Icon(
                Icons.tour,
                size: 30,
              ),
              subtitle: Text(
                "45 EUR",
                style: TextStyle(fontSize: 20, letterSpacing: 2.5),
              ),
              title: Text(
                "Louver Museum",
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MsMadi'),
              ),
              value: "Louver Museum",
              groupValue: tour,
              onChanged: (val) {
                setState(() {
                  tour = val.toString();
                });
              },
            ),
            RadioListTile(
              secondary: Icon(
                Icons.tour,
                size: 30,
              ),
              subtitle: Text("23 EUR",
                  style: TextStyle(fontSize: 20, letterSpacing: 2.5)),
              title: Text("Eiffel Tower",
                  style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MsMadi')),
              value: "Eiffel Tower",
              groupValue: tour,
              onChanged: (val) {
                setState(() {
                  tour = val.toString();
                });
              },
            ),
            RadioListTile(
              secondary: Icon(
                Icons.tour,
                size: 30,
              ),
              subtitle: Text("55 EUR Including Lunch",
                  style: TextStyle(
                      fontSize: 20, letterSpacing: 2.5, color: Colors.black87)),
              title: Text("Versailles Palace",
                  style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MsMadi')),
              value: "Versailles Palace",
              groupValue: tour,
              onChanged: (val) {
                setState(() {
                  tour = val.toString();
                });
              },
            ),
          ]),
        ),
      ),
    );
  }
}
