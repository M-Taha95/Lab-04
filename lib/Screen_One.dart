import 'package:flutter/material.dart';
import 'package:mylab4app/Screen_Two.dart';
import 'package:mylab4app/main.dart';

class Screen_One extends StatefulWidget {
  const Screen_One({super.key});

  @override
  State<Screen_One> createState() => _Screen_OneState();
}

class _Screen_OneState extends State<Screen_One> {
  List myItems = ["Four Seasons", "Grand Hayyat", "Sheraton"];
  String mySelecteditem = "Four Seasons";
  String hotel = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/09/02/20/56/hotel-1640201_1280.jpg"))),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              dropdownColor: Color.fromARGB(255, 85, 183, 222),
              value: mySelecteditem,
              items: myItems
                  .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  mySelecteditem = val.toString();
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Screen_Two();
                      },
                    ));
                  });
                },
                child: Text("Go Forward to Rent a Car")),
            RadioListTile(
              secondary: Icon(
                Icons.stars,
                size: 30,
              ),
              subtitle: Text(
                "5 Stars",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Color.fromARGB(255, 7, 42, 59)),
              ),
              title: Text(
                "Four Seasons",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Color.fromARGB(255, 7, 42, 59),
                    fontFamily: 'MsMadi'),
              ),
              value: "Four Sesons",
              groupValue: hotel,
              onChanged: (val) {
                setState(() {
                  hotel = val.toString();
                });
              },
            ),
            RadioListTile(
              secondary: Icon(
                Icons.stars,
                size: 30,
              ),
              subtitle: Text("5 Stars",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 7, 42, 59))),
              title: Text("Grand Hayyat",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 7, 42, 59),
                      fontFamily: 'MsMadi')),
              value: "Grand Hayyat",
              groupValue: hotel,
              onChanged: (val) {
                setState(() {
                  hotel = val.toString();
                });
              },
            ),
            RadioListTile(
              secondary: Icon(
                Icons.stars,
                size: 30,
              ),
              subtitle: Text("5 Stars",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 7, 42, 59))),
              title: Text("Sheraton",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 7, 42, 59),
                      fontFamily: 'MsMadi')),
              value: "Sheraton",
              groupValue: hotel,
              onChanged: (val) {
                setState(() {
                  hotel = val.toString();
                });
              },
            )
          ],
        )),
      ),
    );
  }
}
