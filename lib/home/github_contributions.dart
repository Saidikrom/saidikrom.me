import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'dart:html' as html;

class GithubContributions extends StatelessWidget {
  const GithubContributions({
    super.key,
    required this.date,
  });

  final Map<DateTime, int> date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 300,
        width: 700,
        child: Center(
          child: HeatMap(
            datasets: date,
            defaultColor: const Color(0xFF1B2025),
            colorMode: ColorMode.opacity,
            showText: false,
            textColor: Colors.white,
            scrollable: true,
            startDate: DateTime(2024, 1, 1),
            endDate: DateTime.now().add(const Duration(days: 100)),
            colorsets: {
              1: const Color(0xFF70FF00).withOpacity(0.7),
              2: const Color(0xFF70FF00).withOpacity(0.8),
              3: const Color(0xFF70FF00).withOpacity(0.9),
              4: const Color(0xFF70FF00),
            },
            onClick: (value) {
              html.window.open(
                  "https://github.com/Saidikrom?tab=overview&from=2024-04-01&to=2024-04-20",
                  "github");
            },
          ),
        ),
      ),
    );
  }
}
