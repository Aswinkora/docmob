import 'package:docmob/Screen/editoption.dart';
import 'package:docmob/Screen/login.dart';
import 'package:docmob/Screen/personal_details.dart';
import 'package:docmob/Screen/resetpassword.dart';
import 'package:docmob/const/colors.dart';
import 'package:flutter/material.dart';

class TaskHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
      body: Stack(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Alexander",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.orange[200],
                      child: Image.asset("images/doctor.png"),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Expanded(
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _showLogoutDialog(context);  // Logout Dialog Trigger
                        },
                        child: TaskCard(
                          icon: Icons.logout,
                          title: "Logout",
                          taskCount: 4,
                          color: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Resetpassword()));
                        },
                        child: TaskCard(
                          icon: Icons.lock,
                          title: "Reset password",
                          taskCount: 2,
                          color: Colors.orange,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        },
                        child: TaskCard(
                          icon: Icons.edit,
                          title: "Edit option",
                          taskCount: 6,
                          color: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoctorProfilePage()));
                        },
                        child: TaskCard(
                          icon: Icons.person,
                          title: "Personal details",
                          taskCount: 8,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // _showLogoutDialog function for Logout
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to logout?"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const Dlogin()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "OK",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}

class TaskCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final int taskCount;
  final Color color;

  TaskCard({
    required this.icon,
    required this.title,
    required this.taskCount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: second,
      margin: EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 90,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 15.5, horizontal: 16.0),
          leading: CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: Colors.white),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
