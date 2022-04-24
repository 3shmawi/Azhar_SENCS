import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class FlutterScreen extends StatelessWidget {
  const FlutterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about flutter',
      ),
      body: defaultBody( Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition(
              'Flutter',
              'ال  Android و iOS في مرة واحدة..!\n'
                  '▪️ هي عبارة عن framework تم انشائها '
                  'بواسطة شركة جوجل لعمل تطبيقات الموبايل أندرويد أو ios وكمان تطبيقات الويب باستخدام كود برمجي واحد.\n'
                  '▪️تطوير التطبيقات باستخدام flutter بياخد وقت اقل من انك تكتب كود مختلف لكل platform. \n'
                  '▪️من السهل تصميم UIs جميله وجذابه بسبب وفرة ال widgets في flutter.\n▪'
                  '️أداء التطبيقات المبنيه ب flutter قوي وقريب من ال native وممكن بيساويه كمان'
                  ' \nوالتطبيقات اللي في السوق المشهورة اللي معمولة بال'
                  ' Flutter كتيرة، ومن أمثلتها my BMW app للاندرويد وال ios.',
              19),
          defaultTextItemCenterHeader(
            'Flutter',
          ),
          defaultTextItemReasons(
            'هتتعلم معانا الفلاتر من الصفر لحد الاحتراف، وبالتطبيق العملي كمان.',
          ),
          defaultTextItemReasons(
            'هتلاقي تيم كامل كل مهمته إنه يتابع تقدمك، ويطور مهاراتك بشكل دوري.',
          ),
          defaultTextItemReasons(
            'هتقدر تعمل مشاريع كتير خلال فترة التدريب المكثفة.',
          ),
          defaultTextItemReasons(
            'هتقدر تشارك مشاريعك في معرضنا "معرض هندسة النظم والحاسبات".',
          ),
          defaultTextItemReasons(
            'إنه بيصمم تطبيقات تشتغل على ال android وال iOS في نفس الوقت.',
          ),
          defaultTextItemReasons(
            'سريع جدا في البرمجة؛ ودة هيوفر عليك وقت كبير وانت بتصمم التطبيقات.',
          ),
          defaultTextItemReasons(
            'تكلفته منخفضة مقارنة بباقي تطبيقات البرمجة.',
          ),
          defaultTextItemReasons(
            'تقدر تلاقي الناس اللي هتساعدك في المجال دة بسهولة جدًا. 😌',
          ),
          defaultTextItemReasons(
            'هتتعلم مهارات ال Stem، ودي طبعا غنية عن التعريف.',
          ),
          defaultTextItemReasons(
            'هتتعلم ال frame work، وتعمل بيه أبلكيشن.',
          ),
          defaultTextItemReasons(
            'هتتعلمه عندنا بصورة مجانية بالكامل. 😌',
          ),
          defaultTextItemReasons(
            'محتاج تتعلم لغة واحدة فقط وهي Dart.',
          ),
          defaultTextItemReasons(
            'كل المطلوب منك بس تكون عارف أساسيات الفلاتر أو على الأقل عندك خلفية عنها. 🔥',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}