import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const Item._();
  const factory Item({required String name, required int damage}) = _Magical;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  factory Item.magic() => const Item(name: 'magic', damage: 10);
  factory Item.sharp() => const Item(name: 'sharp', damage: 5);
}