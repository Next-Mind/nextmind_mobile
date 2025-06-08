import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/widgets/dynamic_box/widgets/dynamic_box_widget.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_appbar/home_appbar.dart';
import 'package:nextmind_mobile/ui/home/widgets/linear_calendar/widgets/linear_calendar.dart';
import 'package:nextmind_mobile/ui/home/widgets/next_appointment/widgets/next_appointment_widget.dart';
import 'package:nextmind_mobile/ui/home/widgets/posts_section/widgets/post_carousel.dart';
import 'package:nextmind_mobile/ui/home/widgets/wave_background/wave_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = HomeViewModel.to;

    return Scaffold(
      body: Obx(() {
        if (viewModel.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 380, // Altura fixa da seção com curva
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    const WaveBackgroundStacked(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 24),
                          HomeAppBar(
                            onMenuTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                          LinearCalendarWidget(),
                          NextAppointmentWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: Dimens.of(context).edgeInsetsScreenHorizontal,
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    DynamicBox(),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          'HomeLastPosts'.tr,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    PostCarousel()
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
