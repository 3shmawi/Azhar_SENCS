import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';
import '../../../../shared/components/constants.dart';
import '../../../expanded_photo/expanded_photo_screen.dart';

class GridView1 extends StatelessWidget {
  const GridView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(context, null, 'Archive'),
      body:  Stack(
        children: [
          MyBackgroundColor(),
          Padding(
            padding: const EdgeInsets.only(right: 5.0, left: 10,top: 10),
            child:ListView.builder(

              itemBuilder: (context, index) => Container(
                height: 200,
                width: double.infinity,
                margin:
                EdgeInsets.only(bottom: _w / 30, left: _w / 60, right: _w / 60),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 40,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {
                    navigateTo(
                      context,
                      ShowExpandedPhoto(index),
                    );
                  },
                  child: Image(
                    image: CachedNetworkImageProvider(
                      archive[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              itemCount: archive.length,
            ),
          ),
        ],
      ),
    );
  }
}
