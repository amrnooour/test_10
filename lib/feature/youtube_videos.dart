import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideos extends StatefulWidget {
  const YoutubeVideos({super.key});

  @override
  State<YoutubeVideos> createState() => _YoutubeVideosState();
}

class _YoutubeVideosState extends State<YoutubeVideos> {
  final YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: "3FVZzKnIPMg",
    flags: const YoutubePlayerFlags(autoPlay: false,mute: false));

  bool isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("yotube videos"),),
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*.3,
          width: double.infinity,
          child: YoutubePlayer(controller: controller,
          showVideoProgressIndicator: true,), 
        ),
      ],),
    );
  }
}