import 'package:flutter/material.dart';



class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
  bool showDashboard = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 20,
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("LOGOUT"),
              icon: Icon(Icons.exit_to_app),
            ),
          ],
        ),
        drawer: Drawer(
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
                        !showDashboard; // Toggle the visibility of the dashboard
                      });
                      Navigator.pop(context);
                      // Close the drawer
                    },
                    icon: Icon(Icons.home),
                    label: Text("DASHBOARD"),
                  ),
                ),
              ),
              Padding(
                padding: tilePadding,
                child: ListTile(
                  title: ElevatedButton.icon(
                    onPressed: () {},
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
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Total Customers',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Divider(color: Colors.black12),
                            Text(
                              '1000',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 100,
                        width: 200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Appointments',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Divider(color: Colors.black12),
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Add your stylist list widgets here

                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upcoming Appointments',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        // Add your upcoming events widgets here
                        // Add Text or other widgets related to upcoming events
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  if (showDashboard)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [

                              SizedBox(height: 20),

                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey[200], // Adjust the color as needed
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add functionality for the first stylist button
                                      },
                                      child: Text('Stylist 1'),
                                    ),
                                    SizedBox(height: 10),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add functionality for the second stylist button
                                      },
                                      child: Text('Stylist 2'),
                                    ),
                                    SizedBox(height: 10),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add functionality for the third stylist button
                                      },
                                      child: Text('Stylist 3'),
                                    ),
                                  ],
                                ),
                              )


                            ],
                          ),
                        ),
                      ],
                    ),
                ])));

  }
}