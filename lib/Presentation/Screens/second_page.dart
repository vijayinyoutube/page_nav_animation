import 'package:flutter/material.dart';
import 'package:page_nav_animation/Presentation/Components/app_bar.dart';
import 'package:page_nav_animation/Presentation/Components/primary_btn.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: 'Page 2', context: context),
      body: Center(
        child: PrimaryBtn(
          btnChild: const Text('Nav back'),
          btnFun: () =>Navigator.pop(context),
        ),
      ),
    );
  }
}
