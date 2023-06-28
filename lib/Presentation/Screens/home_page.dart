import 'package:flutter/material.dart';
import 'package:page_nav_animation/Presentation/Components/app_bar.dart';
import 'package:page_nav_animation/Presentation/Components/primary_btn.dart';
import 'package:page_nav_animation/Presentation/Screens/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: 'Page Nav Animation', context: context),
      body: Center(
        child: PrimaryBtn(
          btnChild: const Text('Nav to page 2'),
          btnFun: () => Navigator.of(context).push(_createRoute()),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
