// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/calenter_enam.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/package_core.dart';

class HorizontalCalendarPlus extends StatelessWidget {
  final ValueNotifier<DateTime> _currentDateNotifier;
  final double? calendarHeight;
  final int? totaldateCount;
  final int? countPreviesDate;
  final bool reverse;
  final Axis? datescrollDirection;
  final double? boxelevation;
  final ScrollController? scrollController;
  final double? boxBorderRadius;
  final double boxBorderwidth;
  final Color  boxBorderColor;
  final double boxActiveBorderwidth;
  final Color  boxActiveBorderColor;
  final Color  boxActiveBgColor;
  final Color  boxUnActiveBgColor;
  final CalenderDateFormate? calenderLabelformate;
  final CalenderDateFormate? calenderSubTitleformate;
  HorizontalCalendarPlus({super.key, 
    required ValueNotifier<DateTime> currentDateNotifier,
    required this.scrollController,
    this.calendarHeight = 100.0,
    this.totaldateCount = 7,
    this.countPreviesDate = 3,
    this.reverse = false,
    this.datescrollDirection = Axis.horizontal,
    this.boxelevation = 1,
    this.boxBorderRadius = 10.0,
    this.boxBorderwidth = 1,
    this.boxBorderColor =  Colors.black,
    this.boxActiveBorderwidth = 3,
    this.boxActiveBorderColor =  Colors.green,
    this.boxActiveBgColor =  Colors.white,
    this.boxUnActiveBgColor = Colors.white,
    this.calenderLabelformate = CalenderDateFormate.WEEKDAY,
    this.calenderSubTitleformate = CalenderDateFormate.MONTH_DAY,
  }) :  _currentDateNotifier = currentDateNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTime>(
      valueListenable: _currentDateNotifier,
      builder: (context, currentDateTime, _) {
        return Container(
          height: calendarHeight,
          child: ListView.builder(
            scrollDirection: datescrollDirection!,
            controller: scrollController,
            itemCount: totaldateCount! < 7 ? 7 : totaldateCount,
            reverse: reverse,
            itemBuilder: (context, index) {
              final packageCore = PackageCore(builderIndex: index, dateTime: currentDateTime, countPreviesDate: countPreviesDate!);
              return Card(
                color:  packageCore.dateFormatePlus() == packageCore.checkCurrentDate() ?  boxActiveBgColor :  boxUnActiveBgColor,
                elevation: boxelevation,
                shape: RoundedRectangleBorder(
                  side: packageCore.dateFormatePlus() == packageCore.checkCurrentDate() ? BorderSide(width: boxActiveBorderwidth,color: boxActiveBorderColor) : BorderSide(width: boxBorderwidth,color: boxBorderColor),
                  borderRadius: BorderRadius.circular(boxBorderRadius!),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text( // Label 
                      packageCore.showTitle(calenderLabelformate!.skeleton),
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    Text( // SubTitle text 
                      packageCore.showSubTitle(calenderSubTitleformate!.skeleton), 
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
  

  static void startDateTimeUpdater(ValueNotifier<DateTime> currentDateNotifier,{int timeUpdateseconds = 1}) {
    Stream<DateTime>.periodic(Duration(seconds: timeUpdateseconds), (_) => DateTime.now()).listen((dateTime) {
      currentDateNotifier.value = dateTime;
    });
  }

  static void jumpToCurrentIndex (ScrollController? scrollController, {double? jumpvalue = 820.0}){
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
       scrollController!.jumpTo(jumpvalue!);
    });
  }




}