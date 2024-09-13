import 'package:docmob/const/colors.dart';
import 'package:flutter/material.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Doctor's Header Section
            Card(color:second,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'images/doctor.png', // Replace with the actual image path
                        width: 140,
                        height: 160,
                        // fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, I am',
                            style: TextStyle(
                              color: primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Dr. Alexander',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'MBBS, MS - General Surgery, General Physician',
                            style: TextStyle(
                              color: primary,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                         
                          SizedBox(height: 10),
                          Text(
                            '10 Years Experience Overall',
                            style: TextStyle(
                              color: primary,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 8),
                         
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),

            // Contact Details Section
            Card(color:second,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Contact Details',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Icon(Icons.phone, color: Colors.blueAccent, size: 20),
                        SizedBox(width: 8),
                        Text(
                          '+91 666 777 888',
                          style: TextStyle(
                            fontSize: 16,
                            color: primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(Icons.email, color: Colors.blueAccent, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'Alexander@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(Icons.location_on, color: Colors.blueAccent, size: 20),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            '123 Medical Street, Health City, Wellness Country',
                            style: TextStyle(
                              fontSize: 16,
                              color: primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),

            // About Section
            Card(color:second,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Dr. Alexander is an eminent Endocrinologist associated with Med Hospitals. '
                      'he is specially trained to diagnose diseases related to glands. ',
                      
                      style: TextStyle(fontSize: 16, height: 1.5,color: primary),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),

            // Specialization Section
            Card(color:second,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Specialized in',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: [
                        Chip(label: Text('Diabetes',style: TextStyle(color: Colors.white),),backgroundColor: primary,),
                        Chip(label: Text('Thyroid',style: TextStyle(color: Colors.white)),backgroundColor: primary),
                        Chip(label: Text('Osteoporosis',style: TextStyle(color: Colors.white)),backgroundColor: primary),
                        Chip(label: Text('Surgeon',style: TextStyle(color: Colors.white)),backgroundColor: primary),
                        Chip(label: Text('General',style: TextStyle(color: Colors.white)),backgroundColor: primary),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),

          
          ],
        ),
      ),
    );
  }
}

