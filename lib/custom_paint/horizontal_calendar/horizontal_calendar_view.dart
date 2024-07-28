// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/calender_plus.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/calenter_enam.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/package_core.dart';

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
        child: Column(
          children: [
          
            HorizontalCalendarPlus(
              currentDateNotifier: _currentDateNotifier, 
              padding: EdgeInsets.only(top: 15,left: 8,right: 8),
              scrollController: scrollController,
              calenderLabelformate: CalenderDateFormate.ABBR_WEEKDAY,
              calenderSubTitleformate: CalenderDateFormate.MONTH_DAY,
              designTypeCalender: DesignTypeCalender.DEFAULTDESIGN,
              boxelevation: 5,
              boxActiveBgColor: Colors.green,
              boxborderRadius: BorderRadius.circular(1),
              changelanguage: Changelanguage.NAPILE,
              cardViewDesign: CardContentView(
                hideIcon: false,
                // titletextActiveColor: Colors.red,
                // titletextUnActiveColor: Colors.greenAccent,
              ),
              /*
              customWidgetbuilder: (context, dateTime, index) {
                // return Text("hello ${index!}");
                final packageCore = PackageCore(builderIndex: index, dateTime: dateTime, countPreviesDate: 3);
                return Card(
                    color:  packageCore.dateFormatePlus() == packageCore.checkCurrentDate() ?  Colors.green :  Colors.black,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      side: packageCore.dateFormatePlus() == packageCore.checkCurrentDate() ? BorderSide(width: 2,color: Colors.green) : BorderSide(width: 1,color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Colors.black,
                    borderOnForeground: true,
                    margin: EdgeInsets.all(2),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text( // Label 
                          packageCore.showTitle(CalenderDateFormate.MONTH_DAY.skeleton),
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                        Text( // SubTitle text 
                          packageCore.showSubTitle(CalenderDateFormate.WEEKDAY.skeleton), 
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
              },
              */
            ),
            // Text("hello")
          ],
        ),
      ),
    );
  }
}
