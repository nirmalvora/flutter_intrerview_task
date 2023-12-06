// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EquipmentState {
  List<Equipment> get availableEquipment => throw _privateConstructorUsedError;
  List<Equipment> get selectedEquipment => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentStateCopyWith<EquipmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentStateCopyWith<$Res> {
  factory $EquipmentStateCopyWith(
          EquipmentState value, $Res Function(EquipmentState) then) =
      _$EquipmentStateCopyWithImpl<$Res, EquipmentState>;
  @useResult
  $Res call(
      {List<Equipment> availableEquipment,
      List<Equipment> selectedEquipment,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$EquipmentStateCopyWithImpl<$Res, $Val extends EquipmentState>
    implements $EquipmentStateCopyWith<$Res> {
  _$EquipmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableEquipment = null,
    Object? selectedEquipment = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      availableEquipment: null == availableEquipment
          ? _value.availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      selectedEquipment: null == selectedEquipment
          ? _value.selectedEquipment
          : selectedEquipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentStateImplCopyWith<$Res>
    implements $EquipmentStateCopyWith<$Res> {
  factory _$$EquipmentStateImplCopyWith(_$EquipmentStateImpl value,
          $Res Function(_$EquipmentStateImpl) then) =
      __$$EquipmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Equipment> availableEquipment,
      List<Equipment> selectedEquipment,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$EquipmentStateImplCopyWithImpl<$Res>
    extends _$EquipmentStateCopyWithImpl<$Res, _$EquipmentStateImpl>
    implements _$$EquipmentStateImplCopyWith<$Res> {
  __$$EquipmentStateImplCopyWithImpl(
      _$EquipmentStateImpl _value, $Res Function(_$EquipmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableEquipment = null,
    Object? selectedEquipment = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$EquipmentStateImpl(
      availableEquipment: null == availableEquipment
          ? _value._availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      selectedEquipment: null == selectedEquipment
          ? _value._selectedEquipment
          : selectedEquipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EquipmentStateImpl implements _EquipmentState {
  const _$EquipmentStateImpl(
      {required final List<Equipment> availableEquipment,
      required final List<Equipment> selectedEquipment,
      required this.isLoading,
      this.error})
      : _availableEquipment = availableEquipment,
        _selectedEquipment = selectedEquipment;

  final List<Equipment> _availableEquipment;
  @override
  List<Equipment> get availableEquipment {
    if (_availableEquipment is EqualUnmodifiableListView)
      return _availableEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableEquipment);
  }

  final List<Equipment> _selectedEquipment;
  @override
  List<Equipment> get selectedEquipment {
    if (_selectedEquipment is EqualUnmodifiableListView)
      return _selectedEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedEquipment);
  }

  @override
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'EquipmentState(availableEquipment: $availableEquipment, selectedEquipment: $selectedEquipment, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._availableEquipment, _availableEquipment) &&
            const DeepCollectionEquality()
                .equals(other._selectedEquipment, _selectedEquipment) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_availableEquipment),
      const DeepCollectionEquality().hash(_selectedEquipment),
      isLoading,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentStateImplCopyWith<_$EquipmentStateImpl> get copyWith =>
      __$$EquipmentStateImplCopyWithImpl<_$EquipmentStateImpl>(
          this, _$identity);
}

abstract class _EquipmentState implements EquipmentState {
  const factory _EquipmentState(
      {required final List<Equipment> availableEquipment,
      required final List<Equipment> selectedEquipment,
      required final bool isLoading,
      final String? error}) = _$EquipmentStateImpl;

  @override
  List<Equipment> get availableEquipment;
  @override
  List<Equipment> get selectedEquipment;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentStateImplCopyWith<_$EquipmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
