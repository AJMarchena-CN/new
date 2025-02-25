import 'package:flutter/material.dart';
import 'package:piramix/presentation/views/user/example_view.dart';

class UserHomeScreen extends StatelessWidget {
  static const name = "home-screen";
  final int pageIndex;

  final viewRoutes = const <Widget>[ExampleView()];

  const UserHomeScreen({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: IndexedStack(index: pageIndex, children: viewRoutes)),
      bottomNavigationBar: Placeholder(),
    );
  }
}
