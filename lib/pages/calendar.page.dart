import 'package:flutter/material.dart';
import 'package:myacademy_trainer/pages/class_details.page.dart';
import 'package:weekly_calendar/weekly_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "CALENDAR",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff7058BA),
              ),
            ),
            SizedBox(height: 20),
            WeeklyCalendar(
              calendarStyle: CalendarStyle(
                locale: "en",
                padding: EdgeInsets.all(10),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "For this day you have the following classes:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
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
                          builder: (context) =>
                              ClassDetailsPage('C', '9:00 AM - 11:00 AM'),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
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
                          builder: (context) =>
                              ClassDetailsPage('Java', '11:15 AM - 01:15 PM'),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
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
        ),
      ),
    );
  }
}
