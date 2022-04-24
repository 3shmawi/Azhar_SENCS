
import 'package:date_count_down/date_count_down.dart';
import 'package:flutter/material.dart';

import '../../../shared/components/components.dart';
import '../../../shared/network/remote/open_link_handler.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  _ActivitiesScreenState createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              pinned: true,
              floating: true,
              title: const Text('Info about Activities'),
              centerTitle: true,
              backgroundColor: Colors.white12,
              bottom: TabBar(
                indicatorColor: Colors.black.withOpacity(.8),
                unselectedLabelStyle:
                TextStyle(color: Colors.black.withOpacity(.5)),
                unselectedLabelColor: Colors.black.withOpacity(.4),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black.withOpacity(.8),
                tabs: const [
                  Tab(
                    child: Text(
                      'المناسبات',
                      style: TextStyle(
                        fontFamily: 'MyFont',
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'المعرض',
                      style: TextStyle(
                        fontFamily: 'MyFont',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              mainCardFirst(context),
              mainCardSecond(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget mainCardFirst(BuildContext context) {
    return Stack(
      children: [
        // background color
        const MyBackgroundColor(),

        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
            const EdgeInsets.only(right: 5.0, left: 10, bottom: 10, top: 2),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  ' كل ما تحتاجه  عن المناسبات   \n       في هذه اللينكات   :) ',
                                  style: TextStyle(
                                      fontFamily: 'MyFont',
                                      fontWeight: FontWeight.bold),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          UrlHandler.open(
                            'https://facebook.com/events/s/az_sencs-22-opening-ceremony-%D9%86/259078856130399/',
                          );
                        },
                        child: const Text(
                          'opening 2022',
                          style: TextStyle(fontFamily: 'MyFont'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          UrlHandler.open(
                            'https://facebook.com/events/s/az_sencs-21-opening-ceremony-%D9%84/1114547618961841/',
                          );
                        },
                        child: const Text(
                          'opening 2021',
                          style: TextStyle(fontFamily: 'MyFont'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          UrlHandler.open(
                            'https://facebook.com/events/s/az_sencs-20-opening-ceremony-%D9%84/2559265137637320/',
                          );
                        },
                        child: const Text(
                          'opening 2020',
                          style: TextStyle(fontFamily: 'MyFont'),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          UrlHandler.open(
                            'https://facebook.com/events/s/az-sencs-recruitment-22-13-rea/3155197778136186/',
                          );
                        },
                        child: const Text(
                          'Enter 2022',
                          style: TextStyle(fontFamily: 'MyFont'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          UrlHandler.open(
                            'https://facebook.com/events/s/az-sencs-recruitment-2021-join/2607368032905100/',
                          );
                        },
                        child: const Text(
                          'Enter 2021',
                          style: TextStyle(fontFamily: 'MyFont'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          UrlHandler.open(
                            'https://facebook.com/events/s/enter-continue-your-path-/174365673975827/',
                          );
                        },
                        child: const Text(
                          'Enter 2020',
                          style: TextStyle(fontFamily: 'MyFont'),
                        ),
                      ),
                      TextButton(
                        onPressed: () { UrlHandler.open(
                          'https://facebook.com/events/s/e-n-t-e-r/2861907717156684/',
                        );},
                        child: const Text(
                          'Enter 2019',
                          style: TextStyle(fontFamily: 'MyFont'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          UrlHandler.open(
                            'https://www.facebook.com/AZSENCS/events/?ref=page_internal',
                          );
                        },
                        child: const Text(
                          'البيدج نفسها عشان تشوف كل ال Events  ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'MyFont',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget mainCardSecond(BuildContext context) {
    return Stack(
      children: [
        // background color
        const MyBackgroundColor(),

        Padding(
          padding:
          const EdgeInsets.only(right: 5.0, left: 10, bottom: 10, top: 5),
          child: Center(
            child: Wrap(

              children:  [
                CountDownText(
                  due: DateTime.parse("2022-05-22 00:00:00"),
                  finishedText: "مبروك تم افتتاح المعرض :)",
                  showLabel: true,
                  longDateName: true,
                  daysTextLong: "        DAYS \n",
                  hoursTextLong: "       HOURS \n",
                  minutesTextLong: "      MINUTES \n",
                  secondsTextLong: "      SECONDS \n",
                  style: const TextStyle(color: Colors.white,fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}