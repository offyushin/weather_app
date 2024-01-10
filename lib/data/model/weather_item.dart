class WeatherItem {
  final String time;
  final num temperature_2m;
  final int weathercode;
  final int relativehumidity_2m;
  final num windspeed_10m;

//<editor-fold desc="Data Methods">
  const WeatherItem({
    required this.time,
    required this.temperature_2m,
    required this.weathercode,
    required this.relativehumidity_2m,
    required this.windspeed_10m,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WeatherItem &&
          runtimeType == other.runtimeType &&
          time == other.time &&
          temperature_2m == other.temperature_2m &&
          weathercode == other.weathercode &&
          relativehumidity_2m == other.relativehumidity_2m &&
          windspeed_10m == other.windspeed_10m);

  @override
  int get hashCode =>
      time.hashCode ^
      temperature_2m.hashCode ^
      weathercode.hashCode ^
      relativehumidity_2m.hashCode ^
      windspeed_10m.hashCode;

  @override
  String toString() {
    return 'WeatherItem{' +
        ' time: $time,' +
        ' temperature_2m: $temperature_2m,' +
        ' weathercode: $weathercode,' +
        ' relativehumidity_2m: $relativehumidity_2m,' +
        ' windspeed_10m: $windspeed_10m,' +
        '}';
  }

  WeatherItem copyWith({
    String? time,
    num? temperature_2m,
    int? weathercode,
    int? relativehumidity_2m,
    num? windspeed_10m,
  }) {
    return WeatherItem(
      time: time ?? this.time,
      temperature_2m: temperature_2m ?? this.temperature_2m,
      weathercode: weathercode ?? this.weathercode,
      relativehumidity_2m: relativehumidity_2m ?? this.relativehumidity_2m,
      windspeed_10m: windspeed_10m ?? this.windspeed_10m,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'time': this.time,
      'temperature_2m': this.temperature_2m,
      'weathercode': this.weathercode,
      'relativehumidity_2m': this.relativehumidity_2m,
      'windspeed_10m': this.windspeed_10m,
    };
  }

  factory WeatherItem.fromMap(Map<String, dynamic> map) {
    return WeatherItem(
      time: map['time'] as String,
      temperature_2m: map['temperature_2m'] as num,
      weathercode: map['weathercode'] as int,
      relativehumidity_2m: map['relativehumidity_2m'] as int,
      windspeed_10m: map['windspeed_10m'] as num,
    );
  }

//</editor-fold>
}