import 'package:flutter/material.dart';

class NavSearch extends StatefulWidget {
  const NavSearch({super.key});

  @override
  State<NavSearch> createState() => _NavSearchState();
}

class _NavSearchState extends State<NavSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Text("Emty")),
      ),
    );
  }
}
