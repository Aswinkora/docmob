import 'package:docmob/Screen/Reports.dart';
import 'package:docmob/Screen/appoint.dart';
import 'package:docmob/const/colors.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(94, 148, 148, 148)),
                height: 180,
                width: MediaQuery.sizeOf(context).width / 1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 1),
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image.asset("images/doctor.png"),
                      ),
                    ),
                    SizedBox(
                      width: 20, 
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Good Day,",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Dr. Alexander",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Gynecologist, MS, MD, MBBS",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 170,
                width: MediaQuery.sizeOf(context).width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: third,
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Summary",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Total Patients: 120",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Appointments Today: 4",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Pending Follow-ups: 5",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DashboardCard(
                    title: "Appointments",
                    icon: Icons.calendar_today,
                    color: primary,
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Appoint()));
                    },
                  ),
                  DashboardCard(
                    title: "Doctor Leave",
                    icon: Icons.beach_access,
                    color: second,
                    onTap: () {
                     
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DashboardCard(
                    title: "Reports",
                    icon: Icons.insert_chart,
                    color: Colors.orange,
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportsPage()));
                    },
                  ),
                  DashboardCard(
                    title: "EMR",
                    icon: Icons.local_hospital,
                    color: Colors.teal,
                    onTap: () {
                  
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const DashboardCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 140,
        width: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: third,
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
