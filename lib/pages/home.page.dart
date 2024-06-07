import 'package:flutter/material.dart';
import 'package:myacademy_trainer/pages/class_details.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Academy',
          style: TextStyle(
            color: Color(0xff7058BA),
            fontWeight: FontWeight.bold,
          ),
        ),
        // backgroundColor: Theme.of(context).primaryColor.withOpacity(0.25),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Material(
              elevation:
                  4.0, // Adjust the elevation to change the shadow's intensity
              shape: const CircleBorder(),
              color: Colors.transparent, // Use transparent color for Material
              shadowColor: Colors.black,
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Color(0xffEDEBFF),
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.logout),
                  color: Color(0xff7058BA),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100], // Background color
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ], // Rounded corners
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'assets/avatar-8.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Welcome, Nouha Derbel.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        // color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  // IconButton(
                  //   icon: const Icon(Icons.logout),
                  //   color: Color(0xff7058BA),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, '/login');
                  //   },
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100], // Background color
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ], // Rounded corners
                ),
                child: Column(
                  children: [
                    Text(
                      "Today's classes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffEDEBFF), // Background color
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ], // Rounded corners
                          ),
                          child: ListTile(
                            title: Text(
                              'C',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('9:00 AM - 11:00 AM'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ClassDetailsPage(
                                      'C', '9:00 AM - 11:00 AM'),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffEDEBFF), // Background color
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ], // Rounded corners
                          ),
                          child: ListTile(
                            title: Text(
                              'Java',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('11:15 AM - 01:15 PM'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ClassDetailsPage(
                                      'Java', '11:15 AM - 01:15 PM'),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffEDEBFF), // Background color
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ], // Rounded corners
                          ),
                          child: ListTile(
                            title: Text('Deep Learning',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('3:00 PM - 6:00 PM'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ClassDetailsPage(
                                      'Deep Learning', '3:00 PM - 6:00 PM'),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
