import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview/utils/shared_preference_utils.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../model/equipment.dart';
import '../repository/equipment_service.dart';
import 'equipment_state.dart';

class EquipmentCubit extends Cubit<EquipmentState> {
  final EquipmentService _equipmentService;

  EquipmentCubit(
    this._equipmentService,
  ) : super(EquipmentState.initial()) {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      var availableEquipment = _equipmentService.getAvailableEquipment();
      var selectedEquipment = _loadSelectedEquipment();
      emit(EquipmentState.loaded(
          availableEquipment: availableEquipment,
          selectedEquipment: selectedEquipment));
    });
  }

  void selectEquipment(Equipment equipment) {
    if (state.selectedEquipment.length < 3 &&
        !state.selectedEquipment.contains(equipment)) {
      emit(
        state.copyWith(
          selectedEquipment: [...state.selectedEquipment, equipment],
        ),
      );
    } else {
      Fluttertoast.showToast(
        msg:
            "You have reached the maximum limit of 3 selected equipment. Please unselect an item to add another.",
      );
    }
  }

  void deselectEquipment(Equipment equipment) {
    emit(
      state.copyWith(
        selectedEquipment: List.from(state.selectedEquipment)
          ..remove(equipment),
      ),
    );
  }

  void toggleLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  List<Equipment> _loadSelectedEquipment() {
    List<String> selectedEquipmentIds = getStringList('selected_equipment');
    List<Equipment> data =
        _equipmentService.getEquipmentByIds(selectedEquipmentIds);
    return data;
  }

  void saveSelectedEquipment() async {
    _equipmentService.saveSelectedEquipment(state.selectedEquipment);
  }
}
