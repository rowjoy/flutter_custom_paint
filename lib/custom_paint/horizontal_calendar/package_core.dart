 // ignore_for_file: prefer_const_constructors, unused_element

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


class PackageCore extends CorePlus {
  DateTime dateTime;
  int builderIndex;
  int countPreviesDate;
  PackageCore({required this.builderIndex, required this.dateTime, required this.countPreviesDate});

  @override
  DateTime _quaryDate(){
     DateTime date = dateTime.add(Duration(days: builderIndex - 3));
     return date;
  }
  
  @override
  String showTitle (String? data){
    String weekday = DateFormat(data).format(_quaryDate());
    return weekday;
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
    return formattedDate;
  }

}




abstract class CorePlus {
     DateTime _quaryDate();
     String showTitle(String data);
     String dateFormatePlus();
     String checkCurrentDate();
     String showSubTitle(String dateFormate);
}