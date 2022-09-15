import 'package:flutter/material.dart';
import 'package:mylab4app/Screen_One.dart';
import 'package:mylab4app/Screen_Three.dart';
import 'package:mylab4app/Screen_Two.dart';

void main() {
  runApp(MaterialApp(
    home: Mylab4App(),
  ));
}

class Mylab4App extends StatelessWidget {
  const Mylab4App({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/02/11/01/35/paris-3144950_1280.jpg"))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Screen_One();
                          },
                        ));
                      });
                    },
                    icon: Icon(Icons.hotel),
                    label: Text(
                      "HOTEL",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                          fontFamily: 'MsMadi'),
                    )),
                Divider(height: 10),
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Screen_Two();
                          },
                        ));
                      });
                    },
                    icon: Icon(Icons.car_rental),
                    label: Text(
                      "RENT A CAR",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                          fontFamily: 'MsMadi'),
                    )),
                Divider(height: 10),
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Screen_Three();
                          },
                        ));
                      });
                    },
                    icon: Icon(Icons.tour),
                    label: Text(
                      "TOUR",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                          fontFamily: 'MsMadi'),
                    )),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 5),
                      color: Colors.amber),
                  child: Text(
                    "Welcome to Paries",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue.shade300,
                        fontFamily: 'MsMadi'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
