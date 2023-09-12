import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/theme/color.dart';

class DateTimeWidget extends StatelessWidget {
  final int dateTime;
  DateTimeWidget({super.key, required this.dateTime});

  final format = DateFormat("MMMMEEEEd");

  @override
  Widget build(BuildContext context) {
    final timeStamp = DateTime.fromMillisecondsSinceEpoch(dateTime * 1000);
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(format.format(timeStamp).toString(),
            style: GoogleFonts.ledger(
              color: primaryYellow,
              fontSize: 14,
            )),
      ),
    );
  }
}
