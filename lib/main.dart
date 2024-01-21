import 'package:flutter/material.dart';
import 'package:portfolio_application/screens/blog_page.dart';
import 'package:portfolio_application/screens/home_page.dart';
import 'package:portfolio_application/screens/projects_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => const HomePage(),
        'projects_page': (context) => const ProjectsPage(),
        'blog_page': (context) =>BlogPage()
      },
      home: const HomePage(),
    );
  }
}
