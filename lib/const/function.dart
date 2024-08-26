import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildCard extends StatelessWidget {
  final String label;
  final String value;
  final Color colordata;
  const BuildCard(
      {super.key,
      required this.label,
      required this.value,
      required this.colordata});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: colordata,
        margin: EdgeInsets.only(bottom: 16.0),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                label,
                // style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 28.0,
                //     fontWeight: FontWeight.bold)),
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(value,
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDataTable extends StatelessWidget {
  final String title;
  final List<DataColumn> columns;
  final List<DataRow> rows;

  const CustomDataTable({
    super.key,
    required this.title,
    required this.columns,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: columns,
              rows: rows,
            ),
          ),
        ],
      ),
    );
  }
}
