import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile/domain/models/appointment/availability.dart';
import 'package:nextmind_mobile/ui/appointment/view_models/availability_viewmodel.dart';
import 'package:table_calendar/table_calendar.dart';

class AppoinmentScreen extends StatelessWidget {
  final Map<String, dynamic> psicologo;
  final bool disponivel;

  AppoinmentScreen({Key? key, required this.psicologo, this.disponivel = true})
      : super(key: key);

  final AppointmentViewModel controller = Get.put(AppointmentViewModel());

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(color: Colors.green),
          ),
          Positioned(
            top: screenHeight * 0.2,
            left: 0,
            right: 0,
            height: screenHeight * 0.8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Obx(() {
                if (controller.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (controller.error.isNotEmpty) {
                  return Center(child: Text('Erro: ${controller.error.value}'));
                }

                return Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'CRP: ${psicologo["crp"] ?? "00000"}',
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      psicologo["nome"],
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TableCalendar<Availability>(
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: controller.today,
                      calendarFormat: CalendarFormat.month,
                      availableCalendarFormats: const {
                        CalendarFormat.month: 'Mês',
                      },
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        titleTextStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        leftChevronIcon: Icon(
                          Icons.chevron_left,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        rightChevronIcon: Icon(
                          Icons.chevron_right,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                      enabledDayPredicate: (day) => controller
                          .Availabilities.keys
                          .any((d) => isSameDay(d, day)),
                      selectedDayPredicate: (day) =>
                          isSameDay(controller.selectedDay.value, day),
                      onDaySelected: (selectedDay, focusedDay) {
                        if (controller.Availabilities.keys
                            .any((d) => isSameDay(d, selectedDay))) {
                          controller.selectedDay.value = DateTime(
                            selectedDay.year,
                            selectedDay.month,
                            selectedDay.day,
                          );
                          controller.selectedAvailabilityId.value = null;
                        }
                      },
                      calendarBuilders: CalendarBuilders(
                        defaultBuilder: (context, date, _) {
                          final isAvailable = controller.Availabilities.keys
                              .any((d) => isSameDay(d, date));
                          if (isAvailable) {
                            return Container(
                              margin: const EdgeInsets.all(6),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                '${date.day}',
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            );
                          } else {
                            return Center(
                              child: Text(
                                '${date.day}',
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                            );
                          }
                        },
                        selectedBuilder: (context, date, _) {
                          return Container(
                            margin: const EdgeInsets.all(6),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green.shade900.withOpacity(0.5),
                                  blurRadius: 8,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Text(
                              '${date.day}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          );
                        },
                        disabledBuilder: (context, date, _) {
                          return Center(
                            child: Text(
                              '${date.day}',
                              style: TextStyle(color: Colors.grey.shade300),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(8),
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: (controller.Availabilities[
                                      controller.selectedDay.value] ??
                                  [])
                              .map((ev) {
                            final horaFormatada =
                                DateFormat.Hm().format(DateTime.parse(ev.date));

                            return GestureDetector(
                              onTap: () {
                                controller.selectedAvailabilityId.value = ev.id;
                                debugPrint('Evento selecionado ID: ${ev.id}');
                              },
                              child: Obx(() => Chip(
                                  label: Text(horaFormatada),
                                  backgroundColor: controller
                                              .selectedAvailabilityId.value ==
                                          ev.id
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(context)
                                          .colorScheme
                                          .onSecondary)),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Obx(() {
                      final selectedId =
                          controller.selectedAvailabilityId.value;
                      return SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: disponivel && selectedId != null
                                ? Colors.green
                                : Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: disponivel && selectedId != null
                              ? () async {
                                  await _showAppointmentDialog(
                                      context, controller);
                                }
                              : null,
                          child: Text(
                            disponivel ? "Agendar" : "Indisponível",
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    }),
                  ],
                );
              }),
            ),
          ),
          Positioned(
            top: screenHeight * 0.2 - 45,
            left: MediaQuery.of(context).size.width / 2 - 45,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showAppointmentDialog(
      BuildContext context, AppointmentViewModel controller) async {
    final TextEditingController descriptionController = TextEditingController();

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: const Text('Motivo da Consulta'),
          content: TextField(
            controller: descriptionController,
            decoration: const InputDecoration(
              hintText: 'Descreva brevemente...',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () async {
                final description = descriptionController.text.trim();
                if (description.isEmpty) {
                  Get.snackbar('Erro', 'Descrição não pode estar vazia!',
                      backgroundColor: Colors.red, colorText: Colors.white);
                  return;
                }

                final id = controller.selectedAvailabilityId.value;
                if (id == null) return;

                Navigator.of(context).pop(); // Fecha o diálogo

                final preReserved = await controller.preReserve(id);
                if (!preReserved) {
                  Get.snackbar('Erro', 'Erro ao pré-reservar.',
                      backgroundColor: Colors.red, colorText: Colors.white);
                  return;
                }

                try {
                  await controller.registerAppointment(id, description);
                  Get.snackbar('Sucesso', 'Consulta agendada com sucesso!',
                      backgroundColor: Colors.green, colorText: Colors.white);
                } catch (e) {
                  Get.snackbar('Erro', 'Erro ao agendar: $e',
                      backgroundColor: Colors.red, colorText: Colors.white);
                }
              },
              child: const Text('Confirmar'),
            ),
          ],
        );
      },
    );
  }
}
