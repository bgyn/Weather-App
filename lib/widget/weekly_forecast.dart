import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyForecast extends StatelessWidget {
  const WeeklyForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Weekly Forecast',
              style: GoogleFonts.ledger(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                Icons.arrow_forward_rounded,
              ),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WeeklyWeather(temp: '20', date: "20 Jan", icon: Icons.sunny),
            WeeklyWeather(temp: '23', date: "21 Jan", icon: Icons.air),
            WeeklyWeather(temp: '25', date: "22 Jan", icon: Icons.light),
            WeeklyWeather(temp: '27', date: "23 Jan", icon: Icons.sunny),
          ],
        )
      ],
    );
  }
}

class WeeklyWeather extends StatelessWidget {
  final String temp;
  final IconData icon;
  final String date;
  const WeeklyWeather({
    super.key,
    required this.temp,
    required this.icon,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Container(
      height: height * .15,
      width: width * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$temp°",
            style: GoogleFonts.ledger(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Icon(icon),
          const SizedBox(
            height: 8,
          ),
          Text(
            date,
            style: GoogleFonts.ledger(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
