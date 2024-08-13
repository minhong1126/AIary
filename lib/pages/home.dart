import 'package:flutter/material.dart';
import 'package:aiary/theme/color.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color.lightGreen,
        body: Column(
          children: [
            AppBar(
              backgroundColor: color.lightGreen,
              centerTitle: true,
              title: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
                height: 50,
                width: 50,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const CalendarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

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
        titleTextStyle: TextStyle(color: Colors.white),
        leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
        rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: selectedDay == DateTime.now() ? true : false,
        selectedDecoration: const BoxDecoration(
          color: color.mainGreen,
          shape: BoxShape.circle,
        ),
        defaultTextStyle: const TextStyle(color: Colors.white),
        holidayTextStyle: const TextStyle(color: Colors.white),
        weekendTextStyle: const TextStyle(color: Colors.white),
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
