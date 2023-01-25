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



//import 'dart:convert';


// abstract class Item2 {
//   final String name;
//   final int damage;
//   Item2({required this.name, required this.damage});

//   Map<String, dynamic> toMap();

//   factory Item2.fromMap(Map<String, dynamic> map) {
//     switch (map['name']) {
//       case 'magical':
//         return Magical.fromMap(map);
//       case 'sharp':
//         return Sharp.fromMap(map);
//       default:
//         throw Exception('Invalid item name ${map['name']}');
//     }
//   }

//   String toJson();

//   factory Item2.fromJson(String source) => Item2.fromMap(json.decode(source));

//   Item2 copyWith({String? name, int? damage});
// }

// class Magical implements Item2 {
//   Magical({this.name = 'magical', this.damage = 7});
//   @override
//   final String name;
//   @override
//   final int damage;

//   @override
//   Map<String, dynamic> toMap() {
//     final result = <String, dynamic>{};

//     result.addAll({'name': name});
//     result.addAll({'damage': damage});

//     return result;
//   }

//   factory Magical.fromMap(Map<String, dynamic> map) {
//     return Magical(
//       name: map['name'],
//       damage: map['damage']?.toInt() ?? 0,
//     );
//   }

//   @override
//   String toJson() => json.encode(toMap());

//   factory Magical.fromJson(String source) =>
//       Magical.fromMap(json.decode(source));

//   @override
//   Magical copyWith({String? name, int? damage}) {
//     return Magical(name: name ?? this.name, damage: damage ?? this.damage);
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Magical && other.name == name;
//   }

//   @override
//   int get hashCode => name.hashCode ^ damage.hashCode;
// }

// class Sharp implements Item2 {
//   Sharp({this.name = 'sharp', this.damage = 5});
//   @override
//   final String name;
//   @override
//   final int damage;

//   @override
//   Map<String, dynamic> toMap() {
//     final result = <String, dynamic>{};

//     result.addAll({'name': name});
//     result.addAll({'damage': damage});

//     return result;
//   }

//   factory Sharp.fromMap(Map<String, dynamic> map) {
//     return Sharp(
//       name: map['name'],
//       damage: map['damage']?.toInt() ?? 0,
//     );
//   }

//   @override
//   String toJson() => json.encode(toMap());

//   factory Sharp.fromJson(String source) => Sharp.fromMap(json.decode(source));

//   @override
//   Sharp copyWith({String? name, int? damage}) {
//     return Sharp(name: name ?? this.name, damage: damage ?? this.damage);
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Sharp && other.name == name;
//   }

//   @override
//   int get hashCode => name.hashCode ^ damage.hashCode;
// }
