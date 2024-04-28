import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_10/feature/second.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){
        Get.to((){
         return const SecondPage();
        },duration: const Duration(seconds: 1),transition: Transition.fade);
      },child: const Text("Navigate to second page"),),
    );
  }
}