/// ***
/// This class consists of the DateWidget that is used in the ListView.builder
///
/// Author: Vivek Kaushik <me@vivekkasuhik.com>
/// github: https://github.com/iamvivekkaushik/
/// ***

import 'package:date_picker_timeline/gestures/tap.dart';
import 'package:date_picker_timeline/lama_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatelessWidget {
  final double? width;
  final DateTime date;
  final TextStyle? monthTextStyle, dayTextStyle, dateTextStyle;
  final Color selectionColor;
  final DateSelectionCallback? onDateSelected;
  final String? locale;

  DateWidget({
    required this.date,
    required this.monthTextStyle,
    required this.dayTextStyle,
    required this.dateTextStyle,
    required this.selectionColor,
    this.width,
    this.onDateSelected,
    this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: this.selectionColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: LamaColors.shadowColor.withOpacity(0.09),
            spreadRadius: 8,
            blurRadius: 8,
            offset: const Offset(2, 1), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 11),
      child: InkWell(
        onTap: () {
          // Check if onDateSelected is not null
          if (onDateSelected != null) {
            // Call the onDateSelected Function
            onDateSelected!(this.date);
          }
        },
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                  new DateFormat("E", locale)
                      .format(date)
                      .toUpperCase(), // WeekDay
                  style: dayTextStyle),
              Container(
                width: 65,
                height: 70,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: LamaColors.slightlyLighterPurple,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: LamaColors.shadowColor.withOpacity(0.09),
                      spreadRadius: 8,
                      blurRadius: 8,
                      offset: const Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        new DateFormat("MMM", locale)
                            .format(date)
                            .toUpperCase(), // Month
                        style: monthTextStyle),
                    Text(date.day.toString(), // Date
                        style: dateTextStyle),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
