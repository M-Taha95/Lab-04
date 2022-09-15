import 'package:flutter/material.dart';
import 'package:mylab4app/Screen_Three.dart';
import 'package:mylab4app/main.dart';

class Screen_Two extends StatefulWidget {
  const Screen_Two({super.key});

  @override
  State<Screen_Two> createState() => _Screen_TwoState();
}

class _Screen_TwoState extends State<Screen_Two> {
  List myItem1 = ["Mercedes", "BMW", "Audi"];
  String mySelecteditem1 = "BMW";
  String car = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvay0xMzItaWNlLTAyMTMtbHlqMzgwNy0wMy1yb2FkdHJpcC5qcGc.jpg"))),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              dropdownColor: Color.fromARGB(255, 85, 183, 222),
              value: mySelecteditem1,
              items: myItem1
                  .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  mySelecteditem1 = val.toString();
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Screen_Three();
                      },
                    ));
                  });
                },
                child: Text("Go Forward to Tour")),
            RadioListTile(
              secondary: Icon(
                Icons.car_rental,
                size: 30,
              ),
              subtitle: Text(
                "Model 2022",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.black38),
              ),
              title: Text(
                "Mercedes G-Class",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Color.fromARGB(255, 3, 36, 52),
                    fontFamily: 'MsMadi'),
              ),
              value: "Mercedes",
              groupValue: car,
              onChanged: (val) {
                setState(() {
                  car = val.toString();
                });
              },
            ),
            RadioListTile(
              secondary: Icon(
                Icons.car_rental,
                size: 30,
              ),
              subtitle: Text("Model 2022",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(95, 244, 240, 240))),
              title: Text("BMW X7",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 3, 36, 52),
                      fontFamily: 'MsMadi')),
              value: "BMW",
              groupValue: car,
              onChanged: (val) {
                setState(() {
                  car = val.toString();
                });
              },
            ),
            RadioListTile(
              secondary: Icon(
                Icons.car_rental,
                size: 30,
              ),
              subtitle: Text("Model 2022",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.black38)),
              title: Text("Audi A8",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 3, 36, 52),
                      fontFamily: 'MsMadi')),
              value: "Audi",
              groupValue: car,
              onChanged: (val) {
                setState(() {
                  car = val.toString();
                });
              },
            ),
            CheckboxListTile(
              secondary: Icon(
                Icons.car_rental,
                size: 30,
              ),
              subtitle: Text("Model 2022",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 177, 206, 221))),
              title: Text("Range Rover",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 177, 206, 221),
                      fontFamily: 'MsMadi')),
              value: car1,
              onChanged: (val) {
                setState(() {
                  car1 = val!;
                });
              },
            ),
            CheckboxListTile(
              secondary: Icon(
                Icons.car_rental,
                size: 30,
              ),
              subtitle: Text("Model 2022",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 177, 206, 221))),
              title: Text("Range Rover",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 177, 206, 221),
                      fontFamily: 'MsMadi')),
              value: car1,
              onChanged: (val) {
                setState(() {
                  car1 = val!;
                });
              },
            )
          ],
        )),
      ),
    );
  }
}
