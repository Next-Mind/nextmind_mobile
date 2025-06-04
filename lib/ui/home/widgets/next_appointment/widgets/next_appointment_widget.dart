import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/home/widgets/next_appointment/view_models/next_appointment_viewmodel.dart';

class NextAppointmentWidget extends StatelessWidget {
  const NextAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = NextAppointmentViewmodel.to;
    return ListenableBuilder(
        listenable: viewModel.fetchNextAppointmentCommand,
        builder: (context, child) {
          return viewModel.fetchNextAppointmentCommand.isRunning
              ? _buildLoading(context)
              : _buildNextAppointment(context);
        });
  }
}

Widget _buildLoading(BuildContext context) {
  return Padding(
    padding: Dimens.of(context).edgeInsetsScreenSymmetric,
    child: Column(
      children: [
        FadeShimmer(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 16,
          highlightColor: Theme.of(context).colorScheme.onPrimary,
          baseColor: Theme.of(context).colorScheme.inversePrimary,
          radius: 8,
        ),
        SizedBox(height: 16),
        FadeShimmer(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 24,
          highlightColor: Theme.of(context).colorScheme.onPrimary,
          baseColor: Theme.of(context).colorScheme.inversePrimary,
          radius: 8,
        ),
        SizedBox(height: 16),
        FadeShimmer(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 32,
          highlightColor: Theme.of(context).colorScheme.onPrimary,
          baseColor: Theme.of(context).colorScheme.inversePrimary,
          radius: 8,
        ),
      ],
    ),
  );
}

Widget _buildNextAppointment(BuildContext context) {
  final viewModel = NextAppointmentViewmodel.to;
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        Text(
          viewModel.nextAppointmentTitle,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Text(
          viewModel.nextAppointmentDate,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: viewModel.nextAppointmentDate != '' ? 16 : 0),
        Text(
          viewModel.nextAppointmentHint,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        SizedBox(height: 8),
        ElevatedButton(
          onPressed: () => viewModel.handleNextAppointmentButton(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          ),
          child: Text(viewModel.nextAppointmentButton),
        ),
      ],
    ),
  );
}
