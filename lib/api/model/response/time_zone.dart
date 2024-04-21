import 'package:equatable/equatable.dart';

class Timezone extends Equatable {
  const Timezone({
    required this.useAutomaticTimezone,
    required this.manualTimezone,
    required this.automaticTimezone,
  });

  final bool? useAutomaticTimezone;
  static const String useAutomaticTimezoneKey = "useAutomaticTimezone";

  final String? manualTimezone;
  static const String manualTimezoneKey = "manualTimezone";

  final String? automaticTimezone;
  static const String automaticTimezoneKey = "automaticTimezone";

  Timezone copyWith({
    bool? useAutomaticTimezone,
    String? manualTimezone,
    String? automaticTimezone,
  }) =>
      Timezone(
        useAutomaticTimezone: useAutomaticTimezone ?? this.useAutomaticTimezone,
        manualTimezone: manualTimezone ?? this.manualTimezone,
        automaticTimezone: automaticTimezone ?? this.automaticTimezone,
      );

  factory Timezone.fromJson(Map<String, dynamic> json) => Timezone(
        useAutomaticTimezone: json["useAutomaticTimezone"],
        manualTimezone: json["manualTimezone"],
        automaticTimezone: json["automaticTimezone"],
      );

  Map<String, dynamic> toJson() => {
        "useAutomaticTimezone": useAutomaticTimezone,
        "manualTimezone": manualTimezone,
        "automaticTimezone": automaticTimezone,
      };

  @override
  String toString() {
    return "$useAutomaticTimezone, $manualTimezone, $automaticTimezone, ";
  }

  @override
  List<Object?> get props => [
        useAutomaticTimezone,
        manualTimezone,
        automaticTimezone,
      ];
}
