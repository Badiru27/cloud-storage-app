import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class FilesAndFolder {
  String? name;
  String? createAt;
  String? total;
  List<String>? thumbNail;
  String? icon; 
  Color? color;
  FilesAndFolder({
    this.name,
    this.createAt,
    this.total,
    this.thumbNail,
    this.icon,
    this.color,
  });
  

  FilesAndFolder copyWith({
    String? name,
    String? createAt,
    String? total,
    List<String>? thumbNail,
    String? icon,
    Color? color,
  }) {
    return FilesAndFolder(
      name: name ?? this.name,
      createAt: createAt ?? this.createAt,
      total: total ?? this.total,
      thumbNail: thumbNail ?? this.thumbNail,
      icon: icon ?? this.icon,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'createAt': createAt,
      'total': total,
      'thumbNail': thumbNail,
      'icon': icon,
      'color': color?.value,
    };
  }

  factory FilesAndFolder.fromMap(Map<String, dynamic> map) {
    return FilesAndFolder(
      name: map['name'],
      createAt: map['createAt'],
      total: map['total'],
      thumbNail: List<String>.from(map['thumbNail']),
      icon: map['icon'],
      color: map['color'] != null ? Color(map['color']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FilesAndFolder.fromJson(String source) => FilesAndFolder.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FilesAndFolder(name: $name, createAt: $createAt, total: $total, thumbNail: $thumbNail, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FilesAndFolder &&
      other.name == name &&
      other.createAt == createAt &&
      other.total == total &&
      listEquals(other.thumbNail, thumbNail) &&
      other.icon == icon &&
      other.color == color;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      createAt.hashCode ^
      total.hashCode ^
      thumbNail.hashCode ^
      icon.hashCode ^
      color.hashCode;
  }
}
