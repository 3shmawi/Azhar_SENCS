import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

import '../network/remote/open_link_handler.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

void showToast({
  required String text,
  required Color color,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0,
    );

Widget defaultFormField(
  context, {
  required IconData icon,
  required TextEditingController controller,
  Widget? suffixIcon,
  required String hintText,
  required TextInputType textInputType,
  bool isPassword = false,
}) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.width / 8,
    width: size.width / 1.22,
    alignment: Alignment.center,
    padding: EdgeInsets.only(right: size.width / 30),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(.05),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      controller: controller,
      style: TextStyle(color: Colors.black.withOpacity(.8)),
      obscureText: isPassword,
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.black.withOpacity(.7),
        ),
        suffixIcon: suffixIcon,
        border: InputBorder.none,
        hintMaxLines: 1,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color: Colors.black.withOpacity(.5)),
      ),
    ),
  );
}

Widget defaultTextButton(
  context, {
  required String text,
  required VoidCallback voidCallback,
  double width = double.infinity,
}) {
  Size size = MediaQuery.of(context).size;
  return InkWell(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    onTap: voidCallback,
    child: Container(
      height: size.width / 8,
      width: size.width / width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        // color: const Color(0xff4796ff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text.toUpperCase(),
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

Widget defaultOutLineButton({
  required String text,
  required VoidCallback voidCallback,
  double width = double.infinity,
}) {
  return SizedBox(
    width: width,
    child: OutlinedButton(
      onPressed: voidCallback,
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(
          fontFamily: 'MyFont',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class MyBackgroundColor extends StatelessWidget {
  const MyBackgroundColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            HexColor('#01579b'),
            HexColor('#01579b'),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}

PreferredSize appBar(context, route, String title, [bool leading = true]) {
  return PreferredSize(
    preferredSize: const Size(double.infinity, kToolbarHeight),
    child: ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      child: AppBar(
        // brightness: Brightness.light,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color.fromRGBO(0, 47, 108, 0),
          //systemNavigationBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarDividerColor: Colors.black,
        ),
        backgroundColor: Colors.white.withOpacity(.5),
        elevation: 0,
        leading: leading
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              )
            : Container(),
        title: Text(
          title,
          style: const TextStyle(fontSize: 15, fontFamily: 'MyFont'),
        ),
        centerTitle: true,
      ),
    ),
  );
}

class RouteWhereYouGo extends StatelessWidget {
  const RouteWhereYouGo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: const Text(
          'EXAMPLE  PAGE',
        ),
      ),
    );
  }
}

Widget defaultTextItemCenterHeader(String text) => Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                ' "Reasons for joining "$text   ',
                style: TextStyle(
                    fontFamily: 'MyFont', fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ],
      ),
    );

Widget defaultTextItemReasons(String text) => Padding(
      padding: const EdgeInsets.only(
        right: 0.0,
        left: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'MyFont',
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 10),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 5,
            ),
          ),
        ],
      ),
    );

Widget defaultCommunication() => InkWell(
      onTap: () {
        UrlHandler.open('https://www.facebook.com/AZSENCS');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: CachedNetworkImageProvider(
                'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/facebook.png?alt=media&token=dd5f93fb-ca37-4602-ad76-a88c2ad98e29',
              ),
            ),
          ),
          Text(
            ' road map تواصل معنا الان لمعرفة ال  ',
            style: const TextStyle(
              fontFamily: 'MyFont',
              fontSize: 15,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );

Widget defaultCard(
    context, Animation<double> _animation, Animation<double> _animation2,
    {required String title,
    required String subtitle,
    required Widget route,
    required String image}) {
  double _w = MediaQuery.of(context).size.width;
  return Opacity(
    opacity: _animation.value,
    child: Transform.translate(
      offset: Offset(0, _animation2.value),
      child: Container(
        height: _w / 2.3,
        width: _w,
        padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            HapticFeedback.lightImpact();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => route));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                border:
                    Border.all(color: Colors.white.withOpacity(.1), width: 1)),
            child: Padding(
              padding: EdgeInsets.all(_w / 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: _w / 3,
                    width: _w / 3,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image(
                      image: CachedNetworkImageProvider(
                        image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: _w / 40),
                  SizedBox(
                    width: _w / 2.05,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'MyFont',
                            color: Colors.white,
                            fontSize: _w / 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            wordSpacing: 1,
                          ),
                        ),
                        Text(
                          subtitle,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontSize: _w / 25,
                            fontFamily: 'MyFont',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Tap to know more',
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'MyFont',
                            color: Colors.white,
                            fontSize: _w / 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget defaultTextItemSecond(String text) => Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
        left: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'MyFont',
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 48.0, top: 10),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 5,
            ),
          ),
        ],
      ),
    );

Widget defaultHeaders(String text) => Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 15.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                '$text   ',
                style: TextStyle(
                    fontFamily: 'MyFont', fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ],
      ),
    );

Widget defaultEnglishHeaders(String text) => Padding(
      padding: const EdgeInsets.only(right: 15.0,left: 15.0,top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                '$text   ',
                style: TextStyle(
                    fontFamily: 'MyFont', fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ],
      ),
    );

Widget defaultEnglishTextFollowAnHeaders(String text) => Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
        left: 8.0,
        bottom: 8.0,
        top: 5,
      ),
      child: Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'MyFont',
            ),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );

Widget defaultDefinition(String name, String text,[double right = 48]) => Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: right),
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: 'MyFont', fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                '$name  ',
                style: TextStyle(
                    fontFamily: 'MyFont', fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ],
      ),
    );


Stack defaultBody(Column column,[bool space = true])=>Stack(
  children: [
    const MyBackgroundColor(),
    SingleChildScrollView(
      child: Column(
        children: [
         space? const SizedBox(
            height: 100,
          ):SizedBox(),
          Padding(
            padding: const EdgeInsets.only(right: 5.0, left: 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(15),
              ),
              child: column,
            ),
          ),
        ],
      ),
    ),
  ],
);

Widget itemFollowing({
  required String url,
  required String image,
  required String title,
}) =>
    InkWell(
      onTap: () {
        UrlHandler.open(url);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 19,
              backgroundImage: CachedNetworkImageProvider(
                image,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontFamily: 'MyFont', fontSize: 20),
          ),
        ],
      ),
    );