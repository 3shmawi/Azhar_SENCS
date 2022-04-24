import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class FollowingAzSenScreen extends StatelessWidget {
  const FollowingAzSenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'follow us now ',
      ),
      body: defaultBody(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            itemFollowing(
              url: 'https://www.facebook.com/AZSENCS',
              image:
                  'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/facebook.png?alt=media&token=dd5f93fb-ca37-4602-ad76-a88c2ad98e29',
              title: 'Facebook',
            ),
            itemFollowing(
              url: 'https://www.linkedin.com/company/az-sencs',
              image:
                  'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/linkedin.png?alt=media&token=d8b16a87-d772-43fe-bd40-44eb0533058d',
              title: 'Linkedin',
            ),
            itemFollowing(
              url: 'https://twitter.com/Az_SENCS',
              image:
                  'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/twitter.png?alt=media&token=7c25062b-dfbb-4933-af5e-add65fa865b9',
              title: 'Twitter',
            ),
            itemFollowing(
              url: 'https://www.instagram.com/az_sencs/',
              image:
                  'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/instagram.png?alt=media&token=3d59b1e4-4c4d-460e-8ac8-ccb81ce2dbe9',
              title: 'Instagram',
            ),
            itemFollowing(
              url: 'https://www.youtube.com/channel/UCG0F7N-gR38QBDCbKYay7YQ',
              image:
                  'https://firebasestorage.googleapis.com/v0/b/azsencs-5dbc4.appspot.com/o/youtube%20.png?alt=media&token=1bd9000f-11f1-4639-af42-17874e34cfee',
              title: 'Youtube',
            ),
          ],
        ),
      ),
    );
  }
}
