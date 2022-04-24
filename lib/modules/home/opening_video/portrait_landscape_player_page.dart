
import 'package:azhar/modules/home/opening_video/orientation/video_player_both_widget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class PortraitLandscapePlayerPage extends StatefulWidget {
  @override
  _PortraitLandscapePlayerPageState createState() =>
      _PortraitLandscapePlayerPageState();
}

class _PortraitLandscapePlayerPageState
    extends State<PortraitLandscapePlayerPage> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network('https://firebasestorage.googleapis.com/v0/b/al-azhar-sencs.appspot.com/o/275857652_993548377951403_5183231535748247506_n.mp4?alt=media&token=b79e979d-5a97-40f7-abb8-a0842de28c59')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(toolbarHeight: 0),
    body: VideoPlayerBothWidget(controller: controller),
  );
}