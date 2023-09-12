import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSummary extends StatelessWidget {
  final String maxTemp;
  final String minTemp;
  final String feelsLike;
  final String description;
  DetailSummary({
    super.key,
    required this.maxTemp,
    required this.minTemp,
    required this.description,
    required this.feelsLike,
  });
  final TextStyle textStyle = GoogleFonts.ledger(
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );

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
          'Now it feels like like +$maxTemp, actually +$feelsLike',
          style: textStyle,
        ),
        Text(
          "${description[0].toUpperCase()}${description.substring(1).toLowerCase()}",
          style: textStyle,
        ),
        Text(
          'the temperature is felt in the range from $minTemp° to $maxTemp°',
          style: textStyle,
        ),
      ],
    );
  }
}
