import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class AndroidScreen extends StatelessWidget {
  const AndroidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Android',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition(
              'Android',
              '- سؤال بديهي جداً، ايه هو نوع نظام التشغيل بتاع تليفونك؟ هتقولي أندرويد (طبعا الكلام مش ليك يا أبو تفاحة😁).'
                  '\n- طب تعرف يعني ايه أندرويد 🤔\nهو  نظام تشغيل جوجل هي اللي طورته عشان يتم استخدامه'
                  ' للأجهزة التي تعمل باللمس، والهواتف المحمولة، والأجهزة اللوحية، وبيساعد النظام ده على تسهيل عملية'
                  ' التعامل مع الأجهزة المحمولة من خلال الحركات الشائعة أي باللمس، وبرضو تمّ تطوير برامج الأندرويد حديثاً'
                  ' عشان تناسب أجهزة التلفاز، والعربيات، يعني من الآخر لولا الأندرويد مش هتقدر  تمسك هاتف ذكي في إيدك.\n- '
                  'فهمنا يعني ايه آندرويد ندخل بقى على التطبيقات.🚶\n تطبيقات الموبايل هي برامج صممت لحل '
                  'مشاكلك اليومية اللي بتقابل الناس بواسطة برنامج تم بناؤه بلغات برمجة معينة زي الجاڤا و أصبحت تطبيقات الهاتف '
                  'المحمول في كل مكان وسهلت وغيرت من حياة ناس كتير وتسببت في إنجاز أعمال كبيرة في وقت اقل زي مثلاً تطبيق التمرين '
                  'الرياضية وأوبر وفيسبوك و ضبط الوقت والآذان وغيره تطبيقات كثيره مرتبط بأغلب الحاجات'
                  ' في أوقاتنا اليومية. - بالنسبه للاندرويد  هتلاقي في كذا حاجه هما أساس في اي ابلكيشن ولا يخلو منهم زي مثلا: ال navigation,fragment,menus,APIs.',
              19),
          defaultTextItemCenterHeader('Android'),
          defaultTextItemReasons(
              'تعرف التطبيقات اللي بتستخدها كل يوم بل كل ساعه يتتعمل ازااي.'),
          defaultTextItemReasons('تقدر تعمل فكرتك بنفسك.'),
          defaultTextItemReasons('وأهم حاجه الفلوث.'),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
