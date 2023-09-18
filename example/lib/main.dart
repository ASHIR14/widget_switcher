import 'package:flutter/material.dart';
import 'package:widget_switcher/widget_switcher.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isUnlocked = false;

  Widget textField() {
    return SizedBox(
      width: 300,
      child: TextField(
        textAlign: TextAlign.center,
        obscureText: true,
        cursorColor: Colors.white,
        onChanged: (value) {
          if (value == "keyword") {
            FocusManager.instance.primaryFocus?.unfocus();
            setState(() {
              isUnlocked = true;
            });
          }
        },
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.deepPurpleAccent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.deepPurple),
          ),
          contentPadding: const EdgeInsets.all(10),
          filled: true,
          fillColor: Colors.deepPurple,
          hintText: "Keyword",
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget button() {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: const ShapeDecoration(
          color: Colors.deepPurple,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.check,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              isUnlocked = false;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: WidgetSwitcher(
          firstWidget: textField(),
          secondWidget: button(),
          switchToSecondWidget: isUnlocked,
        ),
      ),
    );
  }
}
