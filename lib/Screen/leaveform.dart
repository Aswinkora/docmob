import 'package:docmob/const/colors.dart';
import 'package:flutter/material.dart';

class Leaveform extends StatefulWidget {
  const Leaveform({super.key});

  @override
  State<Leaveform> createState() => _LeaveformState();
}

class _LeaveformState extends State<Leaveform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        leading: Padding(
          padding: const EdgeInsets.only(left: 7),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("images/midas_logo.png")),
        ),
        title: const Column(
          children: [
            Text("Alexander",
                style: TextStyle(fontSize: 18, color: Colors.white)),
            Padding(
              padding: EdgeInsets.only(right: 45),
              child: Text(
                "MBBS",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_sharp,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'LEAVE FORM',
              style: TextStyle(
                  color: primary, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(18),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'DOCTOR NAME :',
                          style: TextStyle(color: primary, fontSize: 15),
                        ),
                        Expanded(
                            child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'NAME',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Type of leave :',
                          style: TextStyle(color: primary, fontSize: 15),
                        ),
                        Expanded(
                            child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Type of leave',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DATE:',
                          style: TextStyle(color: primary, fontSize: 15),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: InputDatePickerFormField(
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2600)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reason :',
                          style: TextStyle(color: primary, fontSize: 15),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                            child: SizedBox(
                          child: TextFormField(
                            minLines: 1,
                            maxLines: 500,
                            decoration: InputDecoration(
                                labelText: 'Reason for leave',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        const Color.fromARGB(255, 119, 133, 212))),
                onPressed: () {},
                child: Text(
                  'APPLY FOR LEAVE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
