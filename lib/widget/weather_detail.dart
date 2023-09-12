import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/theme/color.dart';

class WeatherDetail extends StatelessWidget {
  final TextStyle _textStyle = GoogleFonts.ledger(
    fontSize: 14,
    color: primaryYellow,
  );
  final String windSpeed;
  final String humidity;
  final int visibility;
  WeatherDetail(
      {super.key,
      required this.windSpeed,
      required this.humidity,
      required this.visibility});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      width: width,
      height: height * .15,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //!wind
          Factor(
            unit: "${windSpeed}km\\h",
            title: "Wind",
            textStyle: _textStyle,
            iconData: Icons.air,
          ),
          //!humidity
          Factor(
            unit: "$humidity%",
            title: "Humidity",
            textStyle: _textStyle,
            iconData: Icons.water_drop_outlined,
          ),
          //!visibility
          Factor(
            unit: "${visibility / 1000.toInt()}km",
            title: "Visibility",
            textStyle: _textStyle,
            iconData: Icons.visibility_outlined,
          ),
        ],
      ),
    );
  }
}

class Factor extends StatelessWidget {
  final IconData iconData;
  final String unit;
  final String title;
  final TextStyle textStyle;
  const Factor(
      {super.key,
      required this.unit,
      required this.title,
      required this.textStyle,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Icon(
            iconData,
            color: primaryYellow,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          unit,
          style: textStyle,
        ),
        Text(
          title,
          style: textStyle,
        )
      ],
    );
  }
}
