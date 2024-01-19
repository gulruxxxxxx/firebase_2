import 'package:flutter/material.dart';

import 'colors.dart';


class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("404",
        style: TextStyle(
          fontSize: 40,
          color: white,
          fontWeight: FontWeight.w700
        ),),
      ),
    );
  }
}