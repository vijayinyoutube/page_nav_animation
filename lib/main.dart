import 'package:flutter/material.dart';
import 'Presentation/Declarations/Themes/theme_data.dart';
import 'Presentation/Routes/generated_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
