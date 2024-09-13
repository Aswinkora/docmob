import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Reports'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Lab Reports Section
            ReportCard(
              title: 'Lab Reports',
              icon: Icons.biotech,
              description: 'View your recent lab test results.',
              onTap: () {
                // Navigate to Lab Reports details
              },
            ),
            
            const SizedBox(height: 16),

            // Vitals Reports Section
            ReportCard(
              title: 'Vitals Reports',
              icon: Icons.monitor_heart,
              description: 'Check your vitals records including blood pressure and heart rate.',
              onTap: () {
                // Navigate to Vitals Reports details
              },
            ),
            
            const SizedBox(height: 16),

            // Medication Reports Section
            ReportCard(
              title: 'Medication Reports',
              icon: Icons.medical_services,
              description: 'Review your medication history and current prescriptions.',
              onTap: () {
                // Navigate to Medication Reports details
              },
            ),
            
            const SizedBox(height: 16),

            // Imaging Reports Section
            ReportCard(
              title: 'Imaging Reports',
              icon: Icons.image,
              description: 'View your X-rays, MRIs, and other imaging reports.',
              onTap: () {
                // Navigate to Imaging Reports details
              },
            ),
            
            const SizedBox(height: 16),

            // Other Reports Section
            ReportCard(
              title: 'Other Reports',
              icon: Icons.folder_open,
              description: 'Access any other medical reports.',
              onTap: () {
                // Navigate to Other Reports details
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;
  final VoidCallback onTap;

  const ReportCard({
    required this.title,
    required this.icon,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Icon(icon, color: Colors.white),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
            ],
          ),
        ),
      ),
    );
  }
}
