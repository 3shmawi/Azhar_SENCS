import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import 'activities/activites_screen.dart';
import 'az_sencs/az_sencs_screen.dart';
import 'committes/committes_screen.dart';

import 'opening_video/portrait_landscape_player_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
      appBar: appBar(context, null, 'Welcome to Az_SENCS :)', false),
      body: Stack(
        children: [
          // background color
          const MyBackgroundColor(),

          /// ListView
          ListView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 5.5),
              defaultCard(
                context,
                _animation,
                _animation2,
                title: 'AZ_SENCS',
                subtitle: '',
                route: const AzSenScreen(),
                image:
                    'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/az_sencs.jpg?alt=media&token=ad6f94b4-5ee3-41d9-804c-c0123085e6d6',
              ),
              defaultCard(
                context,
                _animation,
                _animation2,
                title: 'Committees',
                subtitle: '',
                route: const CommitteesScreen(),
                image:
                    'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/tech.jpg?alt=media&token=c9708aa5-be84-4011-a852-706caf3583a4',
              ),
              defaultCard(
                context,
                _animation,
                _animation2,
                title: 'Activities',
                subtitle: '',
                route: const ActivitiesScreen(),
                image:
                    'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/Technical.png?alt=media&token=c5b151a7-a966-41e5-a9df-c3c22ae91a93',
              ),
              defaultCard(
                context,
                _animation,
                _animation2,
                title: 'Opening Day',
                subtitle: '',
                route: PortraitLandscapePlayerPage(),
                image:
                    'https://firebasestorage.googleapis.com/v0/b/al-azhar-sencs.appspot.com/o/open.jpg?alt=media&token=634904fa-25e2-4a60-b143-e5885ed16e6f',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
