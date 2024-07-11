// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/calender_plus.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/calenter_enam.dart';

class HorizontalCalendar extends StatefulWidget {
  @override
  _HorizontalCalendarState createState() => _HorizontalCalendarState();
}

class _HorizontalCalendarState extends State<HorizontalCalendar> {
  final ValueNotifier<DateTime> _currentDateNotifier = ValueNotifier(DateTime.now());
  ScrollController? scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    HorizontalCalendarPlus.startDateTimeUpdater(_currentDateNotifier);
    HorizontalCalendarPlus.jumpToCurrentIndex(scrollController);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HorizontalCalendarPlus(
          currentDateNotifier: _currentDateNotifier, 
          scrollController: scrollController,
          calenderSubTitleformate: CalenderDateFormate.MONTH_DAY,
          calenderLabelformate:CalenderDateFormate.ABBR_WEEKDAY,
        ),
      ),
    );
  }
}
