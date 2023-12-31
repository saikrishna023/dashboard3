
import 'package:flutter/material.dart';

import '../stylist_details.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedStylist = 0;
  ButtonStyle selectedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.blue, // Default color for unselected buttons
  );

  ButtonStyle getStylistButtonStyle(int stylistId) {
    return selectedStylist == stylistId
        ? ElevatedButton.styleFrom(
      primary: Colors.red, // Change to red when selected
    )
        : selectedButtonStyle;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      '499',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
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
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
              color: Colors.grey[200],
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 10),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                      children:[
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedStylist = 1;
                                            });
                                          },
                                          child: Text('Stylist 1'),
                                          style: getStylistButtonStyle(1),
                                        ),
                                        SizedBox(height: 10),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedStylist = 2;
                                            });
                                          },
                                          child: Text('Stylist 2'),
                                          style: getStylistButtonStyle(2),
                                        ),
                                        SizedBox(height: 10),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedStylist = 3;
                                            });
                                          },
                                          child: Text('Stylist 3'),
                                          style: getStylistButtonStyle(3),
                                        ),
                                      ]
                                  ),
                                  SizedBox(width: 40),

                                  if (selectedStylist != 0)
                                    Column(
                                      children: [
                                        Center(
                                          child: Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: StylistDetails(
                                                    id: selectedStylist == 1
                                                        ? '101'
                                                        : selectedStylist == 2
                                                        ? '102'
                                                        : '103',
                                                    name: selectedStylist == 1
                                                        ? 'Ajay bhat'
                                                        : selectedStylist == 2
                                                        ? 'akshay sharma'
                                                        : 'Ashish punder',


                                                    phoneNumber: selectedStylist == 1
                                                        ? '9296088712'
                                                        : selectedStylist == 2
                                                        ? '8732945523'
                                                        : '7503842100',
                                                    description: selectedStylist == 1
                                                        ?  'Expert in Hairstyle'
                                                        :   selectedStylist == 2
                                                        ?  'Expert in shaving'
                                                        :  'Expert in massage'

                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ]),
                          ]))]),
          )
        ],
      ),

    );
  }
}