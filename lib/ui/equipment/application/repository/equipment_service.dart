import 'package:flutter_interview/utils/shared_preference_utils.dart';

import '../../model/equipment.dart';

class EquipmentService {
  EquipmentService();

  List<Equipment> getAvailableEquipment() {
    // Simulate fetching equipment data from an API or local database
    final availableEquipment = [
      Equipment(id: '1', name: 'Dumbbells'),
      Equipment(id: '2', name: 'Barbell'),
      Equipment(id: '3', name: 'Kettlebell'),
      Equipment(id: '4', name: 'Treadmill'),
      Equipment(id: '5', name: 'Stationary bike'),
    ];
    return availableEquipment;
  }

  List<Equipment> getEquipmentByIds(List<String> ids) {
    final availableEquipment = getAvailableEquipment();
    return availableEquipment
        .where((equipment) => ids.contains(equipment.id))
        .toList();
  }

  void saveSelectedEquipment(List<Equipment> selectedEquipment) {
    final selectedEquipmentIds =
        selectedEquipment.map((equipment) => equipment.id).toList();
    setStringList('selected_equipment', selectedEquipmentIds);
  }
}
