String weatherIconUrlBy(num weathercode) {
  switch (weathercode) {
    case >= 0 && <= 3:
      return 'https://openweathermap.org/img/wn/01d@2x.png';

    case >= 4 && <= 12:
      return 'https://openweathermap.org/img/wn/03d@2x.png';

    case == 13:
      return 'https://openweathermap.org/img/wn/11d@2x.png';

    case >= 14 && <= 19:
      return 'https://openweathermap.org/img/wn/04d@2x.png';

    case (>= 20 && <= 29) || (>= 50 && <= 59):
      return 'https://openweathermap.org/img/wn/10d@2x.png';

    case >= 30 && <= 39:
      return 'https://openweathermap.org/img/wn/03d@2x.png';

    case >= 40 && <= 49:
      return 'https://openweathermap.org/img/wn/50d@2x.png';

    case >= 60 && <= 69:
      return 'https://openweathermap.org/img/wn/09d@2x.png';

    case >= 70 && <= 79:
      return 'https://openweathermap.org/img/wn/13d@2x.png';

    case >= 80 && <= 89:
      return 'https://openweathermap.org/img/wn/09d@2x.png';

    default:
      return 'https://openweathermap.org/img/wn/11d@2x.png';
  }
}
