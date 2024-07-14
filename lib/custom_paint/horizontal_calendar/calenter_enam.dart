// ignore_for_file: constant_identifier_names

enum CalenderDateFormate {
    DAY('d'),
    ABBR_WEEKDAY('E'),
    WEEKDAY('EEEE'),
    ABBR_STANDALONE_MONTH('LLL'),
    STANDALONE_MONTH('LLLL'),
    NUM_MONTH('M'),
    NUM_MONTH_DAY('Md'),
    NUM_MONTH_WEEKDAY_DAY('MEd'),
    ABBR_MONTH('MMM'),
    ABBR_MONTH_DAY('MMMd'),
    ABBR_MONTH_WEEKDAY_DAY('MMMEd'),
    MONTH('MMMM'),
    MONTH_DAY('MMMMd'),
    MONTH_WEEKDAY_DAY('MMMMEEEEd'),
    ABBR_QUARTER('QQQ'),
    QUARTER('QQQQ'),
    YEAR('y'),
    YEAR_NUM_MONTH('yM'),
    YEAR_NUM_MONTH_DAY('yMd'),
    YEAR_NUM_MONTH_WEEKDAY_DAY('yMEd'),
    YEAR_ABBR_MONTH('yMMM'),
    YEAR_ABBR_MONTH_DAY('yMMMd'),
    YEAR_ABBR_MONTH_WEEKDAY_DAY('yMMMEd'),
    YEAR_MONTH('yMMMM'),
    YEAR_MONTH_DAY('yMMMMd'),
    YEAR_MONTH_WEEKDAY_DAY('yMMMMEEEEd'),
    YEAR_ABBR_QUARTER('yQQQ'),
    YEAR_QUARTER('yQQQQ'),
    HOUR24('H'),
    HOUR24_MINUTE('Hm'),
    HOUR24_MINUTE_SECOND('Hms'),
    HOUR('j'),
    HOUR_MINUTE('jm'),
    HOUR_MINUTE_SECOND('jms'),
    HOUR_MINUTE_GENERIC_TZ('jmv'),
    HOUR_MINUTE_TZ('jmz'),
    HOUR_GENERIC_TZ('jv'),
    HOUR_TZ('jz'),
    MINUTE('m'),
    MINUTE_SECOND('ms'),
    SECOND('s');
    final String skeleton;
    const CalenderDateFormate(this.skeleton);
}

enum DesignTypeCalender{
  CUSTOMDESIGN,
  DEFAULTDESIGN
}


enum Changelanguage {
  HINDI,
  BANGLA,
  NAPILE,
  DEFAULT
}

Map<String, String> hindiToEnglishShortWeekMap = {
    'रवि': 'Sun',
    'सोम': 'Mon',
    'मंगल': 'Tue',
    'बुध': 'Wed',
    'गुरु': 'Thu',
    'शुक्र': 'Fri',
    'शनि': 'Sat'
};

Map<String, String> hindiToEnglishShortMonthMap = {
    'जन': 'Jan',
    'फर': 'Feb',
    'मार्च': 'Mar',
    'अप्रैल': 'Apr',
    'मई': 'May',
    'जून': 'Jun',
    'जुलाई': 'Jul',
    'अगस्त': 'Aug',
    'सित': 'Sep',
    'अक्ट': 'Oct',
    'नव': 'Nov',
    'दिस': 'Dec'
  };

Map<String, String> banglaToEnglishShortWeekMap = {
    'রবি': 'Sun',
    'সোম': 'Mon',
    'মঙ্গল': 'Tue',
    'বুধ': 'Wed',
    'বৃহ': 'Thu',
    'শুক্র': 'Fri',
    'শনি': 'Sat'
};

Map<String, String> banglaToEnglishShortMonthMap = {
    'জানু': 'Jan',
    'ফেব': 'Feb',
    'মার্চ': 'Mar',
    'এপ্রি': 'Apr',
    'মে': 'May',
    'জুন': 'Jun',
    'জুল': 'Jul',
    'আগ': 'Aug',
    'সেপ': 'Sep',
    'অক্টো': 'Oct',
    'নভে': 'Nov',
    'ডিসে': 'Dec'
  };

  Map<String, String> nepaliToEnglishShortWeekMap = {
    'आइत': 'Sun',
    'सोम': 'Mon',
    'मंगल': 'Tue',
    'बुध': 'Wed',
    'बिही': 'Thu',
    'शुक्र': 'Fri',
    'शनि': 'Sat'
  };
  Map<String, String> nepaliToEnglishShortMonthMap = {
    'जन': 'Jan',
    'फेब': 'Feb',
    'मार्च': 'Mar',
    'अप्र': 'Apr',
    'मे': 'May',
    'जुन': 'Jun',
    'जुल': 'Jul',
    'अग': 'Aug',
    'सेप': 'Sep',
    'अक्ट': 'Oct',
    'नोभ': 'Nov',
    'डिस': 'Dec'
  };

  Map<int, String> banglaNumbers = {
    1: '১',
    2: '২',
    3: '৩',
    4: '৪',
    5: '৫',
    6: '৬',
    7: '৭',
    8: '৮',
    9: '৯',
    10: '১০',
    11: '১১',
    12: '১২',
    13: '১৩',
    14: '১৪',
    15: '১৫',
    16: '১৬',
    17: '১৭',
    18: '১৮',
    19: '১৯',
    20: '২০',
    21: '২১',
    22: '২২',
    23: '২৩',
    24: '২৪',
    25: '২৫',
    26: '২৬',
    27: '২৭',
    28: '২৮',
    29: '২৯',
    30: '৩০',
    31: '৩১'
  };

  Map<int, String> hindiNumbers = {
    1: '१',
    2: '२',
    3: '३',
    4: '४',
    5: '५',
    6: '६',
    7: '७',
    8: '८',
    9: '९',
    10: '१०',
    11: '११',
    12: '१२',
    13: '१३',
    14: '१४',
    15: '१५',
    16: '१६',
    17: '१७',
    18: '१८',
    19: '१९',
    20: '२०',
    21: '२१',
    22: '२२',
    23: '२३',
    24: '२४',
    25: '२५',
    26: '२६',
    27: '२७',
    28: '२८',
    29: '२९',
    30: '३०',
    31: '३१'
  };

  Map<int, String> nepaliNumbers = {
    1: '१',
    2: '२',
    3: '३',
    4: '४',
    5: '५',
    6: '६',
    7: '७',
    8: '८',
    9: '९',
    10: '१०',
    11: '११',
    12: '१२',
    13: '१३',
    14: '१४',
    15: '१५',
    16: '१६',
    17: '१७',
    18: '१८',
    19: '१९',
    20: '२०',
    21: '२१',
    22: '२२',
    23: '२३',
    24: '२४',
    25: '२५',
    26: '२६',
    27: '२७',
    28: '२८',
    29: '२९',
    30: '३०',
    31: '३१'
  };



