import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LinearCalendarWidget extends StatelessWidget {
  final DateTime selectedDate;

  const LinearCalendarWidget({Key? key, required this.selectedDate})
      : super(key: key);

  List<DateTime> _generateWeek(DateTime date) {
    int weekday = date.weekday % 7;
    DateTime sunday = date.subtract(Duration(days: weekday));
    return List.generate(7, (i) => sunday.add(Duration(days: i)));
  }

  @override
  Widget build(BuildContext context) {
    final weekDates = _generateWeek(selectedDate);
    final today = DateTime.now();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: weekDates.map((date) {
          bool isToday = date.day == today.day &&
              date.month == today.month &&
              date.year == today.year;

          return Column(
            children: [
              Text(
                DateFormat.E('pt_BR')
                    .format(date)
                    .substring(0, 1)
                    .toUpperCase(),
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 4),
              Container(
                padding: EdgeInsets.all(6),
                decoration: isToday
                    ? BoxDecoration(color: Colors.white, shape: BoxShape.circle)
                    : null,
                child: Text(
                  '${date.day}',
                  style: TextStyle(
                    color: isToday ? Colors.green : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
