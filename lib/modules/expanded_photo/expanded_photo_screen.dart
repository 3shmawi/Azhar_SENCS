import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../shared/components/constants.dart';


class ShowExpandedPhoto extends StatefulWidget {
  late int index;

  ShowExpandedPhoto(this.index, {Key? key}) : super(key: key);

  @override
  State<ShowExpandedPhoto> createState() => _ShowExpandedPhotoState();
}

class _ShowExpandedPhotoState extends State<ShowExpandedPhoto> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
          const EdgeInsets.only(left: 7.0, right: 5, top: 5, bottom: 3),
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: PhotoView(
                    imageProvider: CachedNetworkImageProvider(
                      archive[widget.index],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                    Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (widget.index == 0) {
                          widget.index = archive.length-1;
                        }
                        widget.index--;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (widget.index == archive.length-1) {
                            widget.index = 0;
                          }
                          widget.index++;
                        });
                      },
                      icon: const Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}