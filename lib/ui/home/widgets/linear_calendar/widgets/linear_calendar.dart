import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile/ui/home/widgets/linear_calendar/view_models/linear_calendar_viewmodel.dart';

class LinearCalendarWidget extends StatefulWidget {
  const LinearCalendarWidget({super.key});

  @override
  State<LinearCalendarWidget> createState() => _LinearCalendarWidgetState();
}

class _LinearCalendarWidgetState extends State<LinearCalendarWidget> {
  final LinearCalendarViewmodel _viewmodel = LinearCalendarViewmodel.to;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: _viewmodel.generateWeekCommand,
        builder: (context, child) {
          return _viewmodel.generateWeekCommand.isRunning
              ? FadeShimmer(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  highlightColor: Theme.of(context).colorScheme.onPrimary,
                  baseColor: Theme.of(context).colorScheme.inversePrimary,
                  radius: 8,
                )
              : _buildCalendar();
        });
  }
}

Widget _buildCalendar() {
  final LinearCalendarViewmodel viewmodel = LinearCalendarViewmodel.to;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: viewmodel.weekDates.map((date) {
        bool isToday = date.day == viewmodel.selectedDate.day &&
            date.month == viewmodel.selectedDate.month &&
            date.year == viewmodel.selectedDate.year;

        return Column(
          children: [
            Text(
              DateFormat.E('pt_BR').format(date).substring(0, 1).toUpperCase(),
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
