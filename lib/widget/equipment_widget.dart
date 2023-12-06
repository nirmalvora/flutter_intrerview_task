import 'package:flutter/material.dart';

import '../ui/equipment/model/equipment.dart';

class AnimatedEquipmentTile extends StatefulWidget {
  final Equipment equipment;
  final bool isSelected;
  final ValueNotifier<bool> isSelectedNotifier;

  const AnimatedEquipmentTile({
    Key? key,
    required this.equipment,
    required this.isSelected,
    required this.isSelectedNotifier,
  }) : super(key: key);

  @override
  State<AnimatedEquipmentTile> createState() => _AnimatedEquipmentTileState();
}

class _AnimatedEquipmentTileState extends State<AnimatedEquipmentTile>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    super.initState();
    AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    widget.isSelectedNotifier.addListener(() {
      if (widget.isSelectedNotifier.value != widget.isSelected) {
        _animationController?.forward();
      }
    });
  }

  @override
  void dispose() {
    widget.isSelectedNotifier.removeListener(() {});
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: widget.isSelectedNotifier.value ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Text(widget.equipment.name),
    );
  }
}
