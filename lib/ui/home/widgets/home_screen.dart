import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_appbar/home_appbar.dart';
import 'package:nextmind_mobile/ui/home/widgets/linear_calendar/linear_calendar.dart';
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
                          LinearCalendarWidget(selectedDate: DateTime.now()),
                          SizedBox(
                            height: Dimens.smallPadding,
                          ),
                          Text('Próxima consulta em:'),
                          SizedBox(
                            height: Dimens.smallPadding,
                          ),
                          Text(
                            '10 Dias',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: Dimens.mediumPadding,
                          ),
                          Text('Confirme sua consulta ou cancele'),
                          SizedBox(
                            height: Dimens.smallPadding,
                          ),
                          ElevatedButton(
                              onPressed: viewModel.logout,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              child: Text('Confirmar',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary))),
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
