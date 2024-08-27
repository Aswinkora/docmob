import 'package:docmob/const/colors.dart';
import 'package:flutter/material.dart';

class Appoint extends StatefulWidget {
  const Appoint({super.key});

  @override
  State<Appoint> createState() => _AppointState();
}

class _AppointState extends State<Appoint> {
  List<Map<String, dynamic>> patients = [
    {'name': 'John Doe', 'age': 45, 'token': '001', 'time': '9:00'},
    {'name': 'Jane Smith', 'age': 30, 'token': '002', 'time': '9:00'},
    {'name': 'Emily Johnson', 'age': 27, 'token': '003', 'time': '9:00'},
    {'name': 'Michael Brown', 'age': 50, 'token': '004', 'time': '9:00'},
    {'name': 'Olivia Davis', 'age': 22, 'token': '005', 'time': '9:00'},
    {'name': 'William Garcia', 'age': 36, 'token': '006', 'time': '9:00'},
    {'name': 'Sophia Martinez', 'age': 41, 'token': '007', 'time': '9:00'},
    {'name': 'James Wilson', 'age': 55, 'token': '008', 'time': '9:00'},
    {'name': 'Isabella Anderson', 'age': 33, 'token': '009', 'time': '9:00'},
    {'name': 'Liam Thomas', 'age': 29, 'token': '010', 'time': '9:00'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Alexander'), Text('MBBS')],
        ),
        backgroundColor: primary,
        leadingWidth: 90,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset('images/midas.png'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'APPOINTMENTS',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: patients.length,
              itemBuilder: (context, index) {
                final patien = patients[index];
                // return Container(
                //     margin: EdgeInsets.all(8.0), // Adds space around each container
                //     padding: EdgeInsets.all(16.0), // Adds space inside each container
                //     height: 100,
                //     decoration: BoxDecoration(
                //       // color: Color.fromARGB(94, 148, 148, 148),
                //       borderRadius: BorderRadius.circular(10.0),
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Text(patien['name']),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         Text('token :${patien['token']}')
                //       ],
                //     ));
                return SizedBox(
                  height: 100,
                  child: Card(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.person,
                            color: second,
                          ),
                          Text('${patien['name']}'),
                          Text('age:${patien['age']}'),
                          Text('time:${patien['time']}'),
                          Text(
                            'token no:${patien['token']}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
