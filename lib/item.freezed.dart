// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Magical.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get name => throw _privateConstructorUsedError;
  int get damage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({String name, int damage});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? damage = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MagicalCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_MagicalCopyWith(
          _$_Magical value, $Res Function(_$_Magical) then) =
      __$$_MagicalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int damage});
}

/// @nodoc
class __$$_MagicalCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$_Magical>
    implements _$$_MagicalCopyWith<$Res> {
  __$$_MagicalCopyWithImpl(_$_Magical _value, $Res Function(_$_Magical) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? damage = null,
  }) {
    return _then(_$_Magical(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Magical extends _Magical with DiagnosticableTreeMixin {
  const _$_Magical({required this.name, required this.damage}) : super._();

  factory _$_Magical.fromJson(Map<String, dynamic> json) =>
      _$$_MagicalFromJson(json);

  @override
  final String name;
  @override
  final int damage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(name: $name, damage: $damage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('damage', damage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Magical &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.damage, damage) || other.damage == damage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, damage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MagicalCopyWith<_$_Magical> get copyWith =>
      __$$_MagicalCopyWithImpl<_$_Magical>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MagicalToJson(
      this,
    );
  }
}

abstract class _Magical extends Item {
  const factory _Magical(
      {required final String name, required final int damage}) = _$_Magical;
  const _Magical._() : super._();

  factory _Magical.fromJson(Map<String, dynamic> json) = _$_Magical.fromJson;

  @override
  String get name;
  @override
  int get damage;
  @override
  @JsonKey(ignore: true)
  _$$_MagicalCopyWith<_$_Magical> get copyWith =>
      throw _privateConstructorUsedError;
}
