import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_appbar/home_appbar.dart';
import 'package:nextmind_mobile/ui/home/widgets/linear_calendar/widgets/linear_calendar.dart';
import 'package:nextmind_mobile/ui/home/widgets/next_appointment/widgets/next_appointment_widget.dart';
import 'package:nextmind_mobile/ui/home/widgets/wave_background/wave_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = HomeViewModel.to;
    return Scaffold(
      body: Obx(
        () => viewModel.isLoading
            ? Center(child: CircularProgressIndicator())
            : Stack(
                children: [
                  WaveBackgroundStacked(),
                  SafeArea(
                    child: Center(
                      child: Column(
                        children: [
                          HomeAppBar(onMenuTap: () {}),
                          LinearCalendarWidget(),
                          NextAppointmentWidget()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
