import 'package:counter/ui/screens/homepage/home_page.dart';
import 'package:counter/ui/screens/homepage/home_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => HomePageViewModel(),
        child: const HomePage(),
      ),
    );
  }
}
