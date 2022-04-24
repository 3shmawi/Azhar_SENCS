import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class JavaScreen extends StatelessWidget {
  const JavaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Java',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          defaultDefinition('Java',
              'تطلع اي الجافا دي..!\n لغة برمجة  بادئ فيها من فترة ومش عارف تتنقل من تعلم الـ Basics، لكن عشان مقدرين أهميتها فأعطيناها حقها وليها لجنة كاملة.. 😌\nفي لجنة الجافا، هتلاقي خُطة منظمة ومتطورة جدًا تتابع من خلالها مذاكرة الجافا\n●الـ  level 1 المشتمل على Basics المتعلقة باللغة بداية من (introduction.. Print Methodes.. Date Types.. Condition statement.. Loop.. Arrays .. بالإضافة لبعض الـ advanced)\n●الـ Level2 المشتمل على oop والمفاهيم الخاصة بيها مع تطبيق وتاسكات بإستمرار\n●مفاهيم الـ Date Structures  and algorithm  مع تدريبات وتاسكات مكثفة.\n●الـ GUI اللي ممكن تستخدمها في الـ projects اللي هتبقى تدرب عليها أثناء فترة تأهيلك.\nودا نبذة مختصرة عن plan اللجنة اللي بتأهلك تكون Software Engineer على الطريق بإذن الله.',
              19),
          defaultTextItemCenterHeader(
            'JAVA',
          ),
          defaultTextItemReasons(
            'هتتعلم لغة الجافا لحد الاحتراف بأفضل road map من خلال لجنة الجافا. 🔥',
          ),
          defaultTextItemReasons(
            'كل الأسئلة اللي بتدور في دماغك هتقدر تلاقيلها إجابة، وهتقدر تفهم كل حاجة انت مش فاهمها.',
          ),
          defaultTextItemReasons(
            'هتلاقي متابعة مستمرة طول الترم؛ عشان تفضل دايما في حماس وتقدم. 😉',
          ),
          defaultTextItemReasons(
            'سهولة تعلم اللغة.',
          ),
          defaultTextItemReasons(
            'مش مطلوب منك غير أنك تكون عارف الأساسيات وبس. 🔥',
          ),
          defaultTextItemReasons(
            'الچاڤا من أكثر اللغات انتشارًا، ومسيطرة على مجال البرمجة من سنة 2000م لحد دلوقتي.',
          ),
          defaultTextItemReasons(
            'بتُستخدم في الأندرويد: تطبيقات الأندرويد أغلبها مكتوبة باستخدام الچاڤا. 😌',
          ),
          defaultTextItemReasons(
            'وكمان في الخدمات المصرفية: علشان تتعامل مع إدارة المعاملات التجارية.',
          ),
          defaultTextItemReasons(
            'وفي المتاجر: برامج المحاسبة اللي بنشوفها في المحلات والمطاعم مكتوبة باستخدام الچاڤا بشكل كلِّي.',
          ),
          defaultTextItemReasons(
            'وكمان في تكنولوجيا المعلومات: فالچاڤا مصممة لحل مشكلة تبعيات التنفيذ.',
          ),
          defaultTextItemReasons(
            'وفي البورصة: علشان تكتب خوارزميات تساعدنا في معرفة أي شركة يمكن أن نستثمر فيها.',
          ),
          defaultTextItemReasons(
            'وفي المجتمع العلمي والبحثي: بتستطيع التعامل مع كمية المعلومات الضخمة.',
          ),
          defaultTextItemReasons(
            'ومش بس كدا.. دا بالإضافة لإستخدامات تانية كتير؛ ف الچاڤا في البرمجة "كالمحيط الغني بالفرص والخيارات."',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
