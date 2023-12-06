import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment.freezed.dart';

@freezed
class Equipment with _$Equipment {
  const factory Equipment({
    required String id,
    required String name,
  }) = _Equipment;
}
