import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_10/feature/youtube_videos.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: YoutubeVideos(),
    );
  }
}
