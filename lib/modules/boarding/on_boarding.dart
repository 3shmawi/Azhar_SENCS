import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../shared/components/components.dart';
import '../../shared/network/local/cash_helper.dart';
import '../register/register_screen.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/splash/splash.png',
      title: 'Az_SENCS',
      body: ' صنع في الأزهر',
    ),
    BoardingModel(
      image: 'assets/splash/onboard.png',
      title: 'Az_SENCS',
      body: 'هيا نستكشف أكثر ',
    ),
  ];

  bool isLast = false;

  void submit() {
    CacheHelper.saveData(
      key: 'onBoarding',
      value: true,
    ).then((value) {
      if (value) {
        navigateTo(
          context,
          const RegisterScreen(),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            const MyBackgroundColor(),
            TextButton(
              onPressed: () {
                navigateAndFinish(
                  context,
                  const RegisterScreen(),
                );
                submit();
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MyFont',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: boardController,
                      onPageChanged: (int index) {
                        if (index == boarding.length - 1) {
                          setState(() {
                            isLast = true;
                          });
                        } else {
                          setState(() {
                            isLast = false;
                          });
                        }
                      },
                      itemBuilder: (context, index) =>
                          buildBoardingItem(boarding[index]),
                      itemCount: boarding.length,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      SmoothPageIndicator(
                        controller: boardController,
                        effect: const ExpandingDotsEffect(
                          dotColor: Colors.white54,
                          activeDotColor: Colors.black26,
                          dotHeight: 10,
                          expansionFactor: 4,
                          dotWidth: 10,
                          spacing: 5.0,
                        ),
                        count: boarding.length,
                      ),
                      const Spacer(),
                      FloatingActionButton(
                        backgroundColor: Colors.black26,
                        onPressed: () {
                          if (isLast) {
                            submit();
                            navigateAndFinish(context, const RegisterScreen());
                          } else {
                            boardController.nextPage(
                              duration: const Duration(
                                milliseconds: 750,
                              ),
                              curve: Curves.fastLinearToSlowEaseIn,
                            );
                          }
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            model.title,
            style: const TextStyle(
              fontSize: 24.0,
              fontFamily: 'MyFont',
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            model.body,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.white,
              fontFamily: 'MyFont',
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      );
}
