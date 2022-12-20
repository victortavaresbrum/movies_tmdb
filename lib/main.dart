import 'package:desafio_api_cubos/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MegaCine());
}

class MegaCine extends StatelessWidget {
  const MegaCine({super.key});

  @override
  Widget build(BuildContext context) {
    return  const HomeScreen();
  }
}
