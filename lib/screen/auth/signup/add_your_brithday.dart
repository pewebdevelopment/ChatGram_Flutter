import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/signup/creat_username.dart';
import 'package:instragramclone/utiles/utiles.dart';
import 'package:table_calendar/table_calendar.dart';

class AddBirthdayScreen extends StatefulWidget {
  @override
  State<AddBirthdayScreen> createState() => _AddBirthdayScreenState();
}

class _AddBirthdayScreenState extends State<AddBirthdayScreen> {
  CalendarFormat forMate = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        backgroundColor: ColorConst.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Add your Birthday",
              style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "This won’t be part of your public profile.",
              textAlign: TextAlign.center,
              style: TextStyleClass.sourceSansProRegular(
                color: ColorConst.grey949,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ///birthdate
            CommonTextField(
              hintText: 'Birth Date',
              keyBoardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              margin: EdgeInsets.only(right: 25, left: 25),
              decoration: BoxDecoration(
                color: ColorConst.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 16,
                    color: ColorConst.black.withOpacity(0.08),
                  ),
                ],
              ),
              child: TableCalendar(
                focusedDay: selectedDay,
                currentDay: DateTime.now(),
                firstDay: DateTime.now() /*.subtract(Duration(days: 0))*/,
                lastDay: DateTime.utc(2030, 3, 14),
                calendarFormat: forMate,
                startingDayOfWeek: StartingDayOfWeek.monday,
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  weekendStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
                  print(focusedDay);
                  print(selectedDay);
                },
                selectedDayPredicate: (DateTime date) {
                  return isSameDay(date, selectedDay);
                },
                onFormatChanged: (CalendarFormat _forMate) {
                  setState(() {
                    forMate = _forMate;
                  });
                },
                sixWeekMonthsEnforced: false,
                calendarStyle: CalendarStyle(
                  canMarkersOverflow: true,
                  disabledTextStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                      fontSize: 16),
                  defaultTextStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16),
                  weekendTextStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16),
                  selectedDecoration: BoxDecoration(
                    color: ColorConst.appColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  todayTextStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  todayDecoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  defaultDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  weekendDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                headerStyle: HeaderStyle(
                  titleTextStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: "RobotoMedium",
                    fontWeight: FontWeight.bold,
                    color: ColorConst.appColor,
                  ),
                  formatButtonVisible: false,
                  titleCentered: true,
                  headerPadding: EdgeInsets.zero,
                  formatButtonShowsNext: false,
                  leftChevronVisible: true,
                  rightChevronVisible: true,
                  formatButtonDecoration: BoxDecoration(
                    color: ColorConst.appColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  formatButtonTextStyle: TextStyle(
                    color: ColorConst.appColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: CommonButton(
                title: "Next",
                fontSize: 16.0,
                onPresss: () {
                  Get.to(
                    () => CreateUserNameScreen(),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
