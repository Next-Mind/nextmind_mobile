import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/widgets/dynamic_box/widgets/dynamic_box_widget.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_appbar/home_appbar.dart';
import 'package:nextmind_mobile/ui/home/widgets/linear_calendar/widgets/linear_calendar.dart';
import 'package:nextmind_mobile/ui/home/widgets/next_appointment/widgets/next_appointment_widget.dart';
import 'package:nextmind_mobile/ui/home/widgets/wave_background/wave_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey _sectionKey = GlobalKey();
  double _waveHeight = 300.0;
  bool _waveMeasured = false;

  @override
  Widget build(BuildContext context) {
    final viewModel = HomeViewModel.to;

    return Scaffold(
      body: Obx(() {
        if (viewModel.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!_waveMeasured) {
          Future.delayed(Duration.zero, _calculateWaveHeight);
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  WaveBackgroundStacked(height: _waveHeight),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      key: _sectionKey,
                      children: [
                        const SizedBox(height: 24),
                        HomeAppBar(
                          onMenuTap: () {
                            AuthRepository.to.logout();
                          },
                        ),
                        LinearCalendarWidget(),
                        NextAppointmentWidget(),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: Dimens.of(context).edgeInsetsScreenHorizontal,
                child: const Column(
                  children: [
                    DynamicBox(),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  void _calculateWaveHeight() {
    final context = _sectionKey.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      final contentHeight = box.size.height;

      if (contentHeight > 0) {
        setState(() {
          _waveHeight = (contentHeight);
          _waveMeasured = true;
        });
      }
    }
  }
}
