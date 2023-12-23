
import 'package:flutter/material.dart';

import '../screens/Dashboard.dart';
import '../stylist_details.dart';
import 'history.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
  bool showDashboard = false;
  bool showHistory = false;
  int selectedStylist = 0;
  Color dashboardButtonColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("LOGOUT"),
              icon: Icon(Icons.exit_to_app),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Drawer(
                backgroundColor: Colors.white,
                elevation: 10,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/logooo.png",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "SCISSOR's",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                      indent: 15,
                      endIndent: 15,
                    ),
                    Padding(
                      padding: tilePadding,
                      child: ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              showDashboard =
                              !showDashboard;
                              dashboardButtonColor = showDashboard
                                  ? Colors.green // Change this to the desired color
                                  : Colors.blue; // Toggle the visibility of the dashboard
                            });
                            // Close the drawer
                          },
                          icon: Icon(Icons.home),
                          label: Text("DASHBOARD"),
                          style: ElevatedButton.styleFrom(
                            primary: dashboardButtonColor, // Set button color
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: tilePadding,
                      child: ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              showHistory = !showHistory;
                            });
                          },
                          icon: Icon(Icons.history),
                          label: Text("HISTORY"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: tilePadding,
                      child: ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.settings),
                          label: Text("SETTINGS"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                  flex: 2,
                  child: Column(children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        labelText: 'Search Bar',
                        hintText: 'Type here',
                        prefixIcon: Icon(Icons.search_rounded),
                      ),
                    ),

                    if (showDashboard)
                      Expanded(child: Dashboard(),),



                  ])
              ),


            ])));
  }
}