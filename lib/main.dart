import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/data/repository/weather_repository_impl.dart';
import 'package:weather_app/domain/use_case/get_weather_item_by_location_use_case_impl.dart';
import 'package:weather_app/presentation/main_screen.dart';
import 'package:weather_app/presentation/main_screen_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MainScreenViewModel(
            getWeatherItemByLocationUseCase: GetWeatherItemByLocationUseCaseImpl(WeatherRepositoryImpl())),
        child: MainScreen(),
      ),
    );
  }
}
