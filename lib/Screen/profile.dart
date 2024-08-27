// import 'package:docmob/const/colors.dart';
// import 'package:flutter/material.dart';

// class profile extends StatefulWidget {
//   const profile({super.key});

//   @override
//   State<profile> createState() => _profileState();
// }

// class _profileState extends State<profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: primary,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 7),
//           child: CircleAvatar(
//               backgroundColor: Colors.white,
//               child: Image.asset("images/midas_logo.png")),
//         ),
//         title: const Column(
//           children: [
//             Text("Alexander",
//                 style: TextStyle(fontSize: 18, color: Colors.white)),
//             Padding(
//               padding: EdgeInsets.only(right: 45),
//               child: Text(
//                 "MBBS",
//                 style: TextStyle(fontSize: 14, color: Colors.white),
//               ),
//             )
//           ],
//         ),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.notifications_sharp,
//                 color: Colors.white,
//               ))
//         ],
//       ),
//       body: Center(
//         child: Container(
//           height: 200,
//           width: 200,
//           color: third,
//           child: Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 30),
//                   child: CircleAvatar(
//                     backgroundColor: third,
//                     radius: 60,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:docmob/const/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskHomePage(),
    );
  }
}

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
                    CircleAvatar(radius: 60,
                      backgroundColor: Colors.orange[200],
                      child: Image.asset("images/doctor.png"),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Expanded(
                  child: ListView(
                    children: [
                      TaskCard(
                        icon: Icons.settings,
                        title: "Settings",
                        taskCount: 4,
                        color: Colors.blue,
                      ),
                      TaskCard(
                        icon: Icons.lock,
                        title: "Reset password",
                        taskCount: 2,
                        color: Colors.orange,
                      ),
                      TaskCard(
                        icon: Icons.edit,
                        title: "Edit option",
                        taskCount: 6,
                        color: Colors.blue,
                      ),
                    
                      TaskCard(
                        icon: Icons.person,
                        title: "Personal datails",
                        taskCount: 8,
                        color: Colors.orange,
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
}

class TaskCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final int taskCount;
  final Color color;

  TaskCard({required this.icon, required this.title, required this.taskCount, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: second,
      margin: EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(height: 90,
        child: Padding(
          padding: const EdgeInsets.only(top:15.5),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: color,
              child: Icon(icon, color: Colors.white),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            
          ),
        ),
      ),
    );
  }
}
