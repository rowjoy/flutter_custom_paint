 // ignore_for_file: prefer_const_constructors, unused_element, non_constant_identifier_names, collection_methods_unrelated_type, avoid_print

 import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/horizontal_calendar/calenter_enam.dart';
import 'package:intl/intl.dart';

//  DateTime quaryDate (DateTime currentDate, int index, ){
//     DateTime date = currentDate.add(Duration(days: index +  -15));
//     return date;
//  }

// String weekday (DateTime dateTime){
//   String weekday = DateFormat('EEEE').format(dateTime);
//   return weekday;
// }

// String dateFormatePlus (DateTime dateTime){
//   String formattedDate = DateFormat('MMM dd').format(dateTime);
//   return formattedDate;
// }



/*

 void initState() {
    super.initState();
    _startDateTimeUpdater();
     WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
       controller!.jumpTo(7 * 80.0);
    });
  }

  void _startDateTimeUpdater() {
    Stream<DateTime>.periodic(Duration(seconds: 1), (_) => DateTime.now()).listen((dateTime) {
      _currentDateNotifier.value = dateTime;
    });
  }

 */


// class  Updatelanguage {
//   final Changelanguage? changelanguage;
//   Updatelanguage({this.changelanguage = Changelanguage.HINDI});
// }

class PackageCore extends CorePlus {
  DateTime dateTime;
  int builderIndex;
  int countPreviesDate;
  Changelanguage changelanguage;
  PackageCore({required this.builderIndex, required this.dateTime, required this.countPreviesDate, this.changelanguage = Changelanguage.HINDI});

  @override
  DateTime _quaryDate(){
     DateTime date = dateTime.add(Duration(days: builderIndex - 3));
     return date;
  }
  
  @override
  String showTitle (String? data){
    String weekday = DateFormat(data).format(_quaryDate());
    if(changelanguage == Changelanguage.HINDI){
        Map<String, String> englishTohindiShortWeekMap = hindiToEnglishShortWeekMap.map((key, value) => MapEntry(value, key));
       final weekdays = englishTohindiShortWeekMap[weekday];
       return weekdays == null ? weekday : weekdays.toString();
    } else if (changelanguage == Changelanguage.BANGLA){
        Map<String, String> englishToBanglaShortWeekMap = banglaToEnglishShortWeekMap.map((key, value) => MapEntry(value, key));
       final weekdays = englishToBanglaShortWeekMap[weekday];
       return weekdays == null ? weekday : weekdays.toString();
    } else if (changelanguage == Changelanguage.NAPILE){
       Map<String, String> englishToNapaliShortWeekMap = nepaliToEnglishShortWeekMap.map((key, value) => MapEntry(value, key));
       final weekdays = englishToNapaliShortWeekMap[weekday];
       return  weekdays == null ? weekday : weekdays.toString();
    }else {
      return weekday;
    }
   
  }

  @override
  String dateFormatePlus (){
    String formattedDate = DateFormat('MMM dd').format(_quaryDate());
    return formattedDate;
  }

  @override
  String checkCurrentDate (){
    final data =  DateFormat('MMM dd').format(dateTime);
    return data;
  }

  @override
  String showSubTitle(String dateFormate) {
    String formattedDate = DateFormat(dateFormate).format(_quaryDate());
    if(changelanguage == Changelanguage.HINDI){
      String months = DateFormat( CalenderDateFormate.ABBR_MONTH.skeleton).format(_quaryDate());
      String days = DateFormat( CalenderDateFormate.DAY.skeleton).format(_quaryDate());
      Map<String, String> englishTohindiShortWeekMap = hindiToEnglishShortMonthMap.map((key, value) => MapEntry(value, key));
      final month = englishTohindiShortWeekMap[months];
      final day = hindiNumbers[int.parse(days)];
      return day == null || month == null ? formattedDate :  "$month $day";
    }else if (changelanguage == Changelanguage.BANGLA){
    //  return "";
      String months = DateFormat( CalenderDateFormate.ABBR_MONTH.skeleton).format(_quaryDate());
      String days = DateFormat( CalenderDateFormate.DAY.skeleton).format(_quaryDate());
      Map<String, String> englishToBanglaShortWeekMap = banglaToEnglishShortMonthMap.map((key, value) => MapEntry(value, key));
      final month = englishToBanglaShortWeekMap[months];
      final day = banglaNumbers[int.parse(days)];
     return day == null || month == null ? formattedDate :  "$month $day";
    }else if (changelanguage == Changelanguage.NAPILE){
      String months = DateFormat( CalenderDateFormate.ABBR_MONTH.skeleton).format(_quaryDate());
      String days = DateFormat( CalenderDateFormate.DAY.skeleton).format(_quaryDate());
      Map<String, String> englishTonepaliShortWeekMap = nepaliToEnglishShortMonthMap.map((key, value) => MapEntry(value, key));
      final month = englishTonepaliShortWeekMap[months];
      final day = nepaliNumbers[int.parse(days)];
      return day == null || month == null ? formattedDate :  "$month $day";
    }else {
      // ignore: unnecessary_brace_in_string_interps
      print("Hello ${formattedDate}");
      return formattedDate;
    }
    // return formattedDate;
  }

}


// CardContentView  class  design proparty manage 
 class CardContentView {
  final Color? titletextActiveColor;
  final Color? titletextUnActiveColor;
  final Color? subTitletextActiveColor;
  final Color? subtitletextUnActiveColor;
  final IconData? icon;
  final Color iconColor;
  final double iconSize;
  final bool hideIcon;

 CardContentView({
  this.titletextActiveColor = Colors.white, 
  this.titletextUnActiveColor = Colors.black,
  this.subTitletextActiveColor = Colors.white,
  this.subtitletextUnActiveColor = Colors.black,
  this.icon = Icons.calendar_today,
  this.hideIcon = false,
  this.iconSize = 20,
  this.iconColor = Colors.white,
});

  
}









abstract class CorePlus {
     DateTime _quaryDate();
     String showTitle(String data);
     String dateFormatePlus();
     String checkCurrentDate();
     String showSubTitle(String dateFormate);
}