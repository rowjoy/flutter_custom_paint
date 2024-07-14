// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/calenter_enam.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/package_core.dart';

class HorizontalCalendarPlus extends StatelessWidget {
  final ValueNotifier<DateTime> _currentDateNotifier;
  final EdgeInsetsGeometry padding;
  final int? totaldateCount;
  final int? countPreviesDate;
  final bool reverse;
  final Axis? datescrollDirection;
  final double? boxelevation;
  final double boxheight;
  final ScrollController? scrollController;
  final CardContentView? cardViewDesign;
  final BorderRadiusGeometry? boxborderRadius;
  final double boxBorderwidth;
  final Color  boxBorderColor;
  final Color  boxActiveBgColor;
  final Color  boxUnActiveBgColor;
  final CalenderDateFormate? calenderLabelformate;
  final CalenderDateFormate? calenderSubTitleformate;
  final DesignTypeCalender? designTypeCalender;
  final Widget? customWidget;
  final Widget Function(BuildContext, DateTime, int)? customWidgetbuilder;
  final BorderSide Function (BuildContext , DateTime, int)? boxBorderside;
  final Changelanguage? changelanguage;



  HorizontalCalendarPlus({super.key, 
    required ValueNotifier<DateTime> currentDateNotifier,
    required this.scrollController,
    required this.padding,
    this.totaldateCount = 7,
    this.countPreviesDate = 3,
    this.reverse = false,
    this.datescrollDirection = Axis.horizontal,
    this.boxelevation = 1,
    this.boxheight = 110,
    this.boxborderRadius = BorderRadius.zero, // Ass
    this.boxBorderwidth = 1,
    this.boxBorderColor =  Colors.black,
    this.boxActiveBgColor =  Colors.white,
    this.boxUnActiveBgColor = Colors.white,
    this.calenderLabelformate = CalenderDateFormate.WEEKDAY,
    this.calenderSubTitleformate = CalenderDateFormate.MONTH_DAY,
    this.designTypeCalender = DesignTypeCalender.DEFAULTDESIGN,
    this.customWidgetbuilder,
    this.customWidget,
    this.boxBorderside,
    this.cardViewDesign,
    this.changelanguage = Changelanguage.HINDI,

  }) :  _currentDateNotifier = currentDateNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTime>(
      valueListenable: _currentDateNotifier,
      builder: (context, currentDateTime, _) {
        return Padding(
          padding: padding,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: boxheight,
            child: ListView.builder(
              scrollDirection: datescrollDirection!,
              controller: scrollController,
              itemCount: totaldateCount! < 7 ? 7 : totaldateCount,
              reverse: reverse,
              itemBuilder: (context, index) {
                final packageCore = PackageCore(
                      builderIndex: index, 
                      dateTime: currentDateTime, 
                      countPreviesDate: countPreviesDate!,
                      changelanguage: changelanguage!,
                 );
                final isCurrentDate =  packageCore.dateFormatePlus() == packageCore.checkCurrentDate();
                if(designTypeCalender == DesignTypeCalender.DEFAULTDESIGN){
                  return Card(
                    color: isCurrentDate ?  boxActiveBgColor :  boxUnActiveBgColor,
                    elevation: boxelevation,
                    shape: boxBorderside == null ? Border(
                      bottom: isCurrentDate ?  BorderSide(width: 3,color: Colors.red) : BorderSide.none,
                    ) : RoundedRectangleBorder(
                       side: boxBorderside == null ? BorderSide.none :  boxBorderside!(context, currentDateTime, index),
                       borderRadius: boxborderRadius!,
                    ),
                    child: CardContent(isCurrentDate: isCurrentDate, packageCore: packageCore, calenderLabelformate: calenderLabelformate, calenderSubTitleformate: calenderSubTitleformate,cardViewDesign: cardViewDesign,),
                  );
                }else{
                   return customWidgetbuilder!(context, currentDateTime, index);
                }
              },
            ),
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

  static void jumpToCurrentIndex (ScrollController? scrollController, {double? jumpvalue = 815.0}){
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
       scrollController!.jumpTo(jumpvalue!);
    });
  }




}

class CardContent extends StatelessWidget {

  const CardContent({
    super.key,
     this.isCurrentDate,
     this.packageCore,
     this.calenderLabelformate,
     this.calenderSubTitleformate,
     this.cardViewDesign,
  });

  final bool? isCurrentDate;
  final PackageCore? packageCore;
  final CalenderDateFormate? calenderLabelformate;
  final CalenderDateFormate? calenderSubTitleformate;
  final CardContentView? cardViewDesign;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          cardViewDesign!.hideIcon == true ? SizedBox() : isCurrentDate! ? Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Icon( cardViewDesign!.icon , color: cardViewDesign!.iconColor, size: cardViewDesign!.iconSize,),
          ) : SizedBox(),
          
          Text(
            packageCore!.showTitle(calenderLabelformate!.skeleton),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: isCurrentDate! ?  cardViewDesign!.titletextActiveColor : cardViewDesign!.titletextUnActiveColor ),
          ),
          Text( 
            packageCore!.showSubTitle(calenderSubTitleformate!.skeleton), 
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: isCurrentDate! ?  cardViewDesign!.subTitletextActiveColor : cardViewDesign!.subtitletextUnActiveColor),
          ),
        ],
      ),
    );
  }
}