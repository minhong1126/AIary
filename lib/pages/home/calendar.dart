import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => CalendarWidgetState();
}

class CalendarWidgetState extends State<CalendarWidget> {
  DateTime selectedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime(2010),
      lastDay: DateTime(2200),
      focusedDay: selectedDay,
      calendarFormat: CalendarFormat.week,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(color: white),
        leftChevronIcon: Icon(Icons.chevron_left, color: white),
        rightChevronIcon: Icon(Icons.chevron_right, color: white),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: selectedDay == DateTime.now(),
        selectedDecoration: const BoxDecoration(
          color: mainGreen,
          shape: BoxShape.circle,
        ),
        defaultTextStyle: const TextStyle(color: white),
        holidayTextStyle: const TextStyle(color: white),
        weekendTextStyle: const TextStyle(color: white),
      ),
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          this.selectedDay = selectedDay;
        });
      },
    );
  }
}
