
class Timezone {
  String? automaticTimezone;
  String? manualTimezone;
  String? useAutomaticTimezone;

  Timezone.fromJson(Map<String, dynamic> json) {
    automaticTimezone = json['automaticTimezone'] as String?;
    manualTimezone = json['manualTimezone'] as String?;
    useAutomaticTimezone = json['useAutomaticTimezone'] as String?;
  }

  Map<String, dynamic> toJson() {
    return {
      'automaticTimezone': automaticTimezone,
      'manualTimezone': manualTimezone,
      'useAutomaticTimezone': useAutomaticTimezone,
    };
  }
}
