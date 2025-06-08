import 'package:get/get.dart';
import 'package:logger/web.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class LinearCalendarViewmodel extends GetxController {
  static LinearCalendarViewmodel get to => Get.find<LinearCalendarViewmodel>();

  final DateTime selectedDate = DateTime.now();

  late List<DateTime> weekDates;

  final Logger _logger = Logger();

  late final generateWeekCommand =
      Command1<List<DateTime>, DateTime>(_generateWeek);

  AsyncResult<List<DateTime>> _generateWeek(DateTime date) async {
    int weekday = date.weekday % 7;
    DateTime sunday = date.subtract(Duration(days: weekday));
    return Success(List.generate(7, (i) => sunday.add(Duration(days: i))));
  }

  @override
  void onInit() async {
    super.onInit();
    generateWeekCommand.addListener(() {
      final snapshot = generateWeekCommand.value;
      if (snapshot is SuccessCommand<List<DateTime>>) {
        weekDates = snapshot.value;
      } else if (snapshot is FailureCommand<List<DateTime>>) {
        _logger.d('Failed to generate week: ${snapshot.error}');
      }
    });

    generateWeekCommand.execute(selectedDate);
  }
}
