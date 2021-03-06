import 'package:flocker/ui/username_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Color colorAeroBlue = const Color.fromRGBO(168, 249, 255, 1);
  final Color colorPaleCerulean = const Color.fromRGBO(155, 196, 203, 1);
  final Color colorGunmetal = const Color.fromRGBO(45, 49, 66, 1);

  final Color colorAnja = const Color(0xFF185b67);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flocker - Where dem Cool Kids At',
      theme: ThemeData(
        primaryColor: colorAnja,
        accentColor: colorAeroBlue,
        buttonTheme: ButtonThemeData(
          buttonColor: colorPaleCerulean,
          textTheme: ButtonTextTheme.accent,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                secondary: colorGunmetal,
              ), // Text color
        ),
      ),
      home: UsernameView(),
    );
  }
}
