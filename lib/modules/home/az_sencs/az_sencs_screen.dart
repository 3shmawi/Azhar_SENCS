import 'package:azhar/modules/home/az_sencs/vision/vision_screen.dart';

import 'package:flutter/material.dart';

import '../../../shared/components/components.dart';
import 'archives/archives_screen.dart';
import 'creation/creation_screen.dart';
import 'following/following_screen.dart';

class AzSenScreen extends StatefulWidget {
  const AzSenScreen({Key? key}) : super(key: key);

  @override
  _AzSenScreenState createState() => _AzSenScreenState();
}

class _AzSenScreenState extends State<AzSenScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late Animation<double> _animation;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: 0, end: -50).animate(CurvedAnimation(
        parent: _controller2, curve: Curves.fastLinearToSlowEaseIn));

    _controller.forward();
    _controller2.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Az_SENCS',
      ),
      body: Stack(
        children: [
          // background color
          const MyBackgroundColor(),

          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: _w / 2.3),
                defaultCard(
                  context,
                  _animation,
                  _animation2,
                  title: 'Creation Story',
                  subtitle: '',
                  image:
                      'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/creation.png?alt=media&token=4460e043-b980-42cf-9eba-1429819534d9',
                  route: const CreationStoryScreen(),
                ),
                defaultCard(
                  context,
                  _animation,
                  _animation2,
                  subtitle: '',
                  title: 'Vision ',
                  image:
                      'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/mission.jpg?alt=media&token=0b0db039-a0c3-4b59-bf2a-04a889bf6554',
                  route: const VisionAndMessageScreen(),
                ),
                defaultCard(
                  context,
                  _animation,
                  _animation2,
                  title: 'Archives ',
                  image:
                      'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/archive.jpg?alt=media&token=2e20aecf-e744-4bde-b9e1-64d47690c502',
                  route: const GridView1(),
                  subtitle: '',
                ),
                defaultCard(
                  context,
                  _animation,
                  _animation2,
                  title: 'Following us ',
                  image:
                      'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/follow.jpg?alt=media&token=b5333011-c9a7-423e-8231-0cf35cd52429',
                  route: const FollowingAzSenScreen(),
                  subtitle: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
