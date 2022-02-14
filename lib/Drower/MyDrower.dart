import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  _MyDrawerState createState() => _MyDrawerState();
}
class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Scaffold(
            body: ListView(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Choose Location",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.location_city,
                    size: 25,
                  ),
                  title: Text(
                    "Citys",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  children: [
                    Container(height:300,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: CIYT.length,
                        itemBuilder: (context, i) {
                          return ListTile(
                            onTap: (){
                              Navigator.of(context).pushNamed('/',arguments: "${CIYT[i]}");
                            },
                            leading: Icon(
                              Icons.location_city,
                              size: 25,
                            ),
                            title: Text(
                              "${CIYT[i]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),ExpansionTile(
                  leading: Icon(
                    Icons.language_sharp,
                    size: 25,
                  ),
                  title: Text(
                    "Country",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  children: [
                    Container(height:400,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: COUNTRY.length,
                        itemBuilder: (context, i) {
                          return ListTile(
                            onTap: (){
                              Navigator.of(context).pushNamed('/',arguments: "${COUNTRY[i]}");
                            },
                            leading: Icon(
                              Icons.language_sharp,
                              size: 25,
                            ),
                            title: Text(
                              "${COUNTRY[i]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
  List<String> CIYT = [
    "Mumbai",
    "Delhi",
    "Berlin",
    "Bangalore",
    "Hyderabad",
    "Tokyo",
    "Ahmedabad",
    "Chennai",
    "Kolkata",
    "London",
    "Surat",
    "Patna",
    "Rajkot",
    "Honkong",
  ];
  List<String> COUNTRY = [
    "India",
    "Brazil",
    "USA",
    "United Kingdom",
    "France",
    "Dubai",
  ];
}
