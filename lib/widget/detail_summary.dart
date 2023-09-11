import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSummary extends StatelessWidget {
  final TextStyle textStyle = GoogleFonts.ledger(
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );
  DetailSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Deatil Summary",
          style: GoogleFonts.ledger(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Now it feels like like +35, actually +31',
          style: textStyle,
        ),
        Text(
          'It feels hot because of the direct sun. Today',
          style: textStyle,
        ),
        Text(
          'the temperature is felt in the range from 31° to 27°',
          style: textStyle,
        ),
      ],
    );
  }
}
