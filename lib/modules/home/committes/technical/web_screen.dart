import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about WEB',
      ),
      body: defaultBody(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            defaultDefinition(
                'WEB',
                'أكتر منه ماتلاقيش، والطلب عليه مابيخلصش!\n'
                    'ال web  بيتقسم لFront end ,back End\n\nال front end  بيكون اللى بتشوفه قدامك من ألوان وأشكال و animation، وعشان تقدر تشتغل Front End لازم تتعلم '
                    '(HTML,CSS , HTML 5, Cs3,Java script , Bootstrap)'
                    ' وبعدين بتسخدم Framework زى ( React ).\n\nال back end  ودا متعلق بكل العمليات الداخليه الخاصة بالموقع وأى حاجه غير'
                    ' مرئية للمستخدم زى تسجيل بيانا'
                    'ته وتحويلها للمصادر الخاصه بالموقع وغيره.\n\nهو اللي'
                    ' مسؤول عن التسجيل في أي موقع يعني بياخد منك المعلومات ويحفظها  زى زرار Add to cart فى سوق.كوم مثلا وكمان نقل المعلومات '
                    'من ال browser ل server.\n\nعشان تتعلم ال back end محتاج تتعلم لغة برمجة زي ال php و database زي my squl و framework زي laravel.👌\n\nال Full Stack Development:دا mix بين ال Front end وال Back end.🔥',
                19),
            defaultTextItemCenterHeader(
              'WEB',
            ),
            defaultTextItemReasons(
              'هتكتسب خبرة عملية ومهارية هتفيدك بعدين. 😉',
            ),
            defaultTextItemReasons(
              'هتتعلم ال Css& HTML.',
            ),
            defaultTextItemReasons(
              'هتتعلم إزاي تستخدم ال (Frame work, Java script).',
            ),
            defaultTextItemReasons(
              'هتتعلم ال back end وبرمجة php.',
            ),
            defaultTextItemReasons(
              'هتتعلم إزاي تكون مصمم ويب محترف. 😌',
            ),
            defaultTextItemReasons(
              'مش بس هتسفيد بالنظري لا هتطبق عملي كمان.',
            ),
            defaultTextItemReasons(
              'هتتحكم في الشكل والنظام اللي المستخدم بيشوفه على الصفحة.',
            ),
            defaultTextItemReasons(
              'مجال الويب من المجالات اللي مفيش غنى عنها لأي مبرمج.',
            ),
            defaultTextItemReasons(
              'هتكتسب مهارات برمجية ومهارية جديدة ومفيدة جدا، وهتقدر تشارك في المعرض بتاعنا.',
            ),
            defaultTextItemReasons(
              'بعد الانضمام للتيم بتكون مؤهل بشكل مميز للتطبيق العملي.',
            ),
            defaultTextItemReasons(
              'هتقدر تشتغل فريلانسر، وتكسب فلوس بالمهارة. 😎',
            ),
            defaultTextItemReasons(
              'هتقدر تعمل تحليل كامل لموقع الويب.',
            ),
            defaultTextItemReasons(
              'هتتعلم إزاي تطور محرك البحث، وكمان هتكتسب خبرة في تصميم الجرافيك.',
            ),
            defaultCommunication(),
          ],
        ),
      ),
    );
  }
}
