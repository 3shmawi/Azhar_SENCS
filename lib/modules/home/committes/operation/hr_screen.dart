import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';


class HrScreen extends StatelessWidget {
  const HrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about HRM',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultHeaders('الرؤيه'),
          defaultTextItemSecond(
            'جعل HRM نموذج لخدمة عالية الجودة وسرعة الاستجابة.',
          ),
          const SizedBox(
            height: 10,
          ),
          defaultHeaders('الرساله'),
          defaultTextItemSecond(
            'تهيئة بيئة عمل ايجابية ومحفزة وجاذبة للكفاءات، وتطبيق سياسات ونظم عادلة وداعمة للاداء والانجاز.',
          ),
          defaultTextItemCenterHeader('Human Resources'),
          defaultTextItemReasons(
            'شايف نفسك قائد. 😎',
          ),
          defaultTextItemReasons(
            'قادر تتحمل مسؤولية.',
          ),
          defaultTextItemReasons(
            'بتحافظ على روح الفريق، وتعلي من المكان اللي موجود فيه. 🥳',
          ),
          defaultTextItemReasons(
            'تقدر تحل المشاكل اللي بتواجهك أو بتواجه الأفراد اللي بتتابعهم. 🕶️',
          ),
          defaultTextItemReasons(
            'تقدر تنظم الفريق إداريا.',
          ),
          defaultTextItemReasons(
            'تعرف تشتغل تحت ضغط.',
          ),
          defaultTextItemReasons(
            'بتعرف تفلتر كويس ومهارة النقد عندك عالية.',
          ),
          defaultTextItemReasons(
            'تعرف تتابع مجموعة من الأشخاص وتعلي ثقتهم بنفسهم وبيك. ✨',
          ),
          defaultTextItemReasons(
            'تقيم آدائهم وتوجههم.',
          ),
          defaultTextItemReasons(
            'تطور مهارات الاعضاء و تأهلهم. 🤩',
          ),
          defaultTextItemReasons(
            'تاخد قرار وتتعامل مع شخصيات مختلفة وتعلى منها.',
          ),
          defaultTextItemReasons(
            'تسيطر على كل الموارد وتستغلها لصالحك. 😉',
          ),
          defaultTextItemReasons(
            'تعلي الاسكيلز عندك ومستعد تفيد وتستفيد.',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
