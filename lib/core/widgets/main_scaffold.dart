import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:propease/core/widgets/bottom_navigation_widget.dart';

class MainScaffold extends StatelessWidget {
  final Widget child;
  final String location;
  const MainScaffold({super.key, required this.child, required this.location});

  int _getIndexFromLocation() {
    if (location.startsWith('/search')) return 1;
    if (location.startsWith('/saved')) return 2;
    if (location.startsWith('/profile')) return 3;
    return 0; // home
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/search');
        break;
      case 2:
        context.go('/saved');
        break;
      case 3:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationWidget(
        currentIndex: _getIndexFromLocation(),
        onItemTapped: (context, index) => _onItemTapped(context, index),
      ),
    );
  }
}
