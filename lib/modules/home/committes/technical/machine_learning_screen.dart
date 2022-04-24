import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class MachineLearningScreen extends StatelessWidget {
  const MachineLearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about ML',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition('ML',
              'الذكاء الاصطناعي ممكن يكون في يوم خطر!!\n\nMachine learning\nبشكل عام هو تعليم الآلة، والآلة مش مقصود بيها الروبوت او الأجهزة بس، لا كل حاجه يقدر الإنسان يستخدمها في حياته زي العربيات والسلاح، ف الآلة معناها الموديل اللي انت شغال عليه وتطلب منه ينفذ تاسك.\n\nطب ليه بتستخدم الآلة أو الكمبيوتر؟!\nعشان مخ الإنسان بيوصل لمرحلة معينه من التفكير وبيوقف عندها ومش بنقتصر علي استخدام الكومبيوتر لأنه بردو ليه limit ف من هنا أتت الحاجة لاستخدام الماشين ليرنينج.\n\nالماشين ليرنينج بيتقسم ل 3 أقسام supervised, unsupervised, reinforcement وفي حاجة رابعة اسمها الشبكات العصبية.',
              19),
          defaultTextItemCenterHeader(
            'Machine Learning',
          ),
          defaultTextItemReasons(
            'التراك دا يُعتبر تكنولوجيا المستقبل. 🔥',
          ),
          defaultTextItemReasons(
            'موجود بشكل كبير وأساسي في حياتنا، وفي كل حاجة حوالينا.',
          ),
          defaultTextItemReasons(
            ' هتتعلم في الأول أساسيات البايثون لحد ما توصل فيها لليڤيل ال advanced.',
          ),
          defaultTextItemReasons(
            'هنوفرلك الكومبوننتس اللي هتبني بيها ال Model بتاعك.',
          ),
          defaultTextItemReasons(
            'هتقدر تعرض ال Model بتاعك والأفكار اللي طورتها في معرضنا "معرض هندسة النظم والحاسبات". ✌',
          ),
          defaultTextItemReasons(
            'هتعرف أكتر عن الMachine بأنواعه "Supervised & Unsupervised".',
          ),
          defaultTextItemReasons(
            'هتتعلم معانا Neural networks & Support vector & وكمان Machine liberals.',
          ),
          defaultTextItemReasons(
            'أزسينس في التراك دا هتكون معاك خطوة بخطوة ف متقلقش. 😎',
          ),
          defaultTextItemReasons(
            'هتتعلم معانا ال "Machine Algorithms".',
          ),
          defaultTextItemReasons(
            'هتتعلم معانا ال libraries اللي هتساعدك تكون وحش المجال.',
          ),
          defaultTextItemReasons(
            'هنعلمك أساسيات العلوم الرياضية (الإحصاء_ والجبر الخطي_ والتفاضل) والأساسيات دي كافية علشان تبدأ تتعلم ML. 🔥',
          ),
          defaultTextItemReasons(
            'هتكتسب معانا مهارات ال STEM واللي تعتبر أساسية لأي مبرمج.',
          ),
          defaultTextItemReasons(
            'هتتعلم معانا مهارات الابتكار والإبداع.',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
