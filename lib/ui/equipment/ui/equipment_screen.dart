import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview/constants/image_constants.dart';
import 'package:flutter_interview/extension/image_extensions.dart';
import 'package:flutter_interview/extension/number_extension.dart';
import 'package:flutter_interview/ui/equipment/application/cubit/equipment_cubit.dart';
import 'package:flutter_interview/ui/equipment/application/cubit/equipment_state.dart';
import 'package:flutter_interview/ui/equipment/application/repository/equipment_service.dart';
import 'package:flutter_interview/utils/shared_preference_utils.dart';
import 'package:flutter_interview/widget/equipment_widget.dart';

class EquipmentScreen extends StatefulWidget {
  const EquipmentScreen({super.key});

  @override
  State<EquipmentScreen> createState() => _EquipmentScreenState();
}

class _EquipmentScreenState extends State<EquipmentScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EquipmentCubit>(
      create: (context) => EquipmentCubit(
        EquipmentService(),
      ),
      child: BlocBuilder<EquipmentCubit, EquipmentState>(
        builder: (context, state) {
          final availableEquipment = state.availableEquipment;
          final selectedEquipment = state.selectedEquipment;

          return Scaffold(
            backgroundColor: Color(0xff27282A),
            appBar: AppBar(
              title: const Text('Equipment Selection'),
              actions: [
                TextButton(
                    onPressed: () {
                      context.read<EquipmentCubit>().saveSelectedEquipment();
                    },
                    child: const Text("Save"))
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: state.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : GridView.builder(
                          itemCount: availableEquipment.length,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          itemBuilder: (context, index) {
                            final equipment = availableEquipment[index];
                            return InkWell(
                              onTap: () {
                                if (!selectedEquipment.contains(equipment)) {
                                  context
                                      .read<EquipmentCubit>()
                                      .selectEquipment(equipment);
                                } else {
                                  context
                                      .read<EquipmentCubit>()
                                      .deselectEquipment(equipment);
                                }
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        ImageConstants.icWorkoutImage
                                            .getPNGImageHW(
                                                fit: BoxFit.cover,
                                                width: double.infinity),
                                        Positioned(
                                            bottom: 10,
                                            right: 10,
                                            child: (selectedEquipment
                                                        .contains(equipment)
                                                    ? ImageConstants
                                                        .icCheckedIcon
                                                    : ImageConstants
                                                        .icUncheckedIcon)
                                                .getPNGImageHW(
                                                    height: 15, width: 15))
                                      ],
                                    ),
                                  ),
                                  5.sh,
                                  Text(
                                    equipment.name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  5.sh,
                                ],
                              ),
                            );
                          },
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 0.78,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                        ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<EquipmentCubit>().toggleLoading();
                      },
                      child: Text(state.isLoading
                          ? 'Stop Loading Indicator'
                          : 'Show Loading Indicator'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<EquipmentCubit>()
                            .showSnackbar(context, "Testing Snackbar");
                      },
                      child: const Text('Show Snackbar'),
                    ),
                  ],
                ),
                (MediaQuery.paddingOf(context).bottom + 10).sh
              ],
            ),
          );
        },
      ),
    );
  }
}
