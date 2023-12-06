import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/equipment.dart';

part 'equipment_state.freezed.dart';

@freezed
class EquipmentState with _$EquipmentState {
  const factory EquipmentState({
    required List<Equipment> availableEquipment,
    required List<Equipment> selectedEquipment,
    required bool isLoading,
    String? error,
  }) = _EquipmentState;
  factory EquipmentState.initial() => const EquipmentState(
        availableEquipment: [],
        selectedEquipment: [],
        isLoading: true,
        error: null,
      );

  factory EquipmentState.loading() => const EquipmentState(
        availableEquipment: [],
        selectedEquipment: [],
        isLoading: true,
        error: null,
      );

  factory EquipmentState.loaded({
    required List<Equipment> availableEquipment,
    required List<Equipment> selectedEquipment,
  }) =>
      EquipmentState(
        availableEquipment: availableEquipment,
        selectedEquipment: selectedEquipment,
        isLoading: false,
        error: null,
      );

  factory EquipmentState.error({required String error}) => EquipmentState(
        availableEquipment: [],
        selectedEquipment: [],
        isLoading: false,
        error: error,
      );
}
