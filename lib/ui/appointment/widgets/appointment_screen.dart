import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentController extends GetxController {
  Rx<DateTime> selectedDay = Rx<DateTime>(DateTime.now());
  Rx<DateTime> focusedDay = Rx<DateTime>(DateTime.now());

  var appointments = <Map<String, dynamic>>[].obs;

  void addAppointment(DateTime date, String event, TimeOfDay time) {
    appointments.add({
      'date': date,
      'event': event,
      'time': time,
    });
    update();  
  }

  void editAppointment(int index, DateTime date, String event, TimeOfDay time) {
    appointments[index] = {
      'date': date,
      'event': event,
      'time': time,
    };
    update(); 
  }

  void removeAppointment(int index) {
    appointments.removeAt(index); 
    update(); 
  }
}


class appointment_screen extends StatelessWidget {
  final AppointmentController _controller = Get.put(AppointmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.blue], 
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
              ),
            ),
          ),
         
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8, 
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                   
                  GetBuilder<AppointmentController>(
  builder: (_) => TableCalendar(
    firstDay: DateTime(2020),
    lastDay: DateTime(2030),
    focusedDay: _controller.focusedDay.value,
    selectedDayPredicate: (day) => _controller.selectedDay.value == day,
    calendarFormat: CalendarFormat.month,
    onDaySelected: (selectedDay, focusedDay) {
      _controller.selectedDay.value = selectedDay;
      _controller.focusedDay.value = focusedDay;
      _controller.update(); 
    },
    eventLoader: (day) {
      return _controller.appointments
          .where((appointment) => isSameDay(appointment['date'], day))
          .map((appointment) => appointment['event'])
          .toList();
    },
   
    calendarStyle: CalendarStyle(
      todayDecoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      selectedDecoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      outsideDaysVisible: false, 
      defaultTextStyle: TextStyle(fontSize: 12, color: Colors.black),
      weekendTextStyle: TextStyle(fontSize: 12, color: Colors.black),
    ),
    headerStyle: HeaderStyle(
      formatButtonVisible: false,
      titleCentered: true,
      titleTextStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    daysOfWeekStyle: DaysOfWeekStyle(
      weekdayStyle: TextStyle(fontSize: 12, color: Colors.black),
      weekendStyle: TextStyle(fontSize: 12, color: Colors.black),
    ),
  ),
),


                Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Agendamento",
        style: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(width: 10), 
      ElevatedButton(
        onPressed: () => _selectDateTime(context),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(14), 
        ),
        child: Icon(Icons.add, size: 28), 
      ),
    ],
  ),
),

                   
                    Container(
                      height: 300, 
                      child: Obx(() => ListView.builder(
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(), 
  itemCount: _controller.appointments.length,
  itemBuilder: (context, index) {
  
    String formattedDate = DateFormat('dd.MM.yy').format(_controller.appointments[index]['date']);
    String formattedTime = _controller.appointments[index]['time'].format(context);
    DateTime appointmentDate = _controller.appointments[index]['date'];

    return GestureDetector(
      onTap: () {
        _controller.selectedDay.value = appointmentDate;
        _controller.focusedDay.value = appointmentDate;
        _controller.update(); 
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Card(
          color: Colors.grey[300], 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _controller.appointments[index]['event'], 
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit, size: 18),
                      onPressed: () => _editAppointment(context, index),
                    ),
                  ],
                ),
              
                Text(
                  "$formattedDate - $formattedTime",
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(height: 10),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => _editAppointment(context, index),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.green),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Text("Editar"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        _controller.removeAppointment(index); 
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.green,
                        side: BorderSide(color: Colors.green),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Text("Cancelar"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  },
)
),
                    ),
                 
                   
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDateTime(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (pickedDate == null) return;

    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime == null) return;

    TextEditingController eventController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Adicionar Evento"),
        content: TextField(
          controller: eventController,
          decoration: InputDecoration(hintText: "Nome do evento"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              _controller.addAppointment(pickedDate, eventController.text, pickedTime);
              Navigator.of(context).pop();
            },
            child: Text("Salvar"),
          ),
        ],
      ),
    );
  }

  void _editAppointment(BuildContext context, int index) {
    String eventName = _controller.appointments[index]['event'];
    DateTime currentDate = _controller.appointments[index]['date'];
    TimeOfDay currentTime = _controller.appointments[index]['time'];

    TextEditingController eventController = TextEditingController(text: eventName);

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text("Editar Evento"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(controller: eventController),
                  TextButton(
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: currentDate,
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                      );
                      if (pickedDate != null) {
                        setState(() => currentDate = pickedDate);
                      }
                    },
                    child: Text("Selecionar Nova Data"),
                  ),
                  TextButton(
                    onPressed: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: currentTime,
                      );
                      if (pickedTime != null) {
                        setState(() => currentTime = pickedTime);
                      }
                    },
                    child: Text("Selecionar Novo Horário"),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    _controller.editAppointment(index, currentDate, eventController.text, currentTime);
                    Navigator.of(context).pop();
                  },
                  child: Text("Salvar"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancelar"),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
