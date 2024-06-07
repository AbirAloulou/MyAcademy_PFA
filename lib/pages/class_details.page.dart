import 'package:flutter/material.dart';

class ClassDetailsPage extends StatefulWidget {
  String keyword = "";
  String time = "";

  ClassDetailsPage(this.keyword, this.time);

  @override
  State<ClassDetailsPage> createState() => _ClassDetailsPageState();
}

class _ClassDetailsPageState extends State<ClassDetailsPage> {
  bool isDone = false;
  bool isChecked = false;
  bool isPresent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.keyword} Class',
          style: TextStyle(
            color: Color(0xff7058BA),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xffEDEBFF),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
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
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CLASS : ${widget.keyword}',
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Checkbox(
                              value: isDone,
                              onChanged: (bool? value) {
                                setState(() {
                                  isDone = value!;
                                });
                              })
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'DATE : 06/06/2024',
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'TIME : ${widget.time}',
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'STUDENTS LIST',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7058BA),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    // border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Abir Aloulou'),
                              Checkbox(
                                  value: isPresent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isPresent = value!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Abdesslem Sfaihi'),
                              Checkbox(
                                  value: isPresent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isPresent = value!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Emna Kammoun'),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Haytham Gharam'),
                              Checkbox(
                                  value: isPresent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isPresent = value!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Haytham Frikha'),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Mahmoud Mseddi'),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Youssef Bouzguenda'),
                              Checkbox(
                                  value: isPresent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isPresent = value!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Zeineb Aloulou'),
                              Checkbox(
                                  value: isPresent,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isPresent = value!;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff7058BA)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
