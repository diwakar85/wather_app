class Post {
  final String description, country, name, icon;
  final int deg, all, humidity, visibility, sunrise, sunset;
  final double temp, speed;
  Post({
    required this.name,
    required this.all,
    required this.country,
    required this.deg,
    required this.description,
    required this.humidity,
    required this.speed,
    required this.temp,
    required this.visibility,
    required this.icon,
    required this.sunrise,
    required this.sunset,
  });
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      all: json['clouds']['all'],
      name: json['name'],
      country: json['sys']['country'],
      sunrise: json['sys']['sunrise'],
      sunset: json['sys']['sunset'],
      deg: json['wind']['deg'],
      speed: json['wind']['speed'],
      temp: json['main']['temp'],
      humidity: json['main']['humidity'],
      description: json['weather'][0]['description'],
      icon: json['weather'][0]['icon'],
      visibility: json['visibility'],
    );
  }
}
