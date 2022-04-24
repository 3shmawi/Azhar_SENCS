import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class RDScreen extends StatelessWidget {
  const RDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about R_D',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultHeaders('الرؤيه'),
          defaultTextItemSecond(
            'الرقي بالفريق إداريا، وتنظيميا، وأخالقيا، و ِعلميا, وعمليا.',
          ),
          const SizedBox(
            height: 10,
          ),
          defaultHeaders('الرساله'),
          defaultTextItemSecond(
            'تميز الفريق على ساحة جامعة الأزهر.',
          ),
          defaultTextItemSecond(
            'تقديم نموذج راقي لكلية الهندسة جامعة الأزهر على صعيد جمهورية مصر العربية.',
          ),
          defaultTextItemCenterHeader('Research & Development'),
          defaultTextItemReasons(
            'شخص بتميل للتحليل. 😎',
          ),
          defaultTextItemReasons(
            'بتحب تطلع أفكار جديدة.',
          ),
          defaultTextItemReasons(
            'بتعرف تحل المشاكل.',
          ),
          defaultTextItemReasons(
            'شخصية قيادية وإيجابية.',
          ),
          defaultTextItemReasons(
            'عندك إرادة قوية للتعلم والتطوير. 😌',
          ),
          defaultTextItemReasons(
            'بتعرف تشتغل على برامج ميكروسوفت وجوجل فورم.',
          ),
          defaultTextItemReasons(
            'اجتماعى، وعندك مهارات تواصل عالية.',
          ),
          defaultTextItemReasons(
            'لبق فى كلامك، وتأثيرك عميق.',
          ),
          defaultTextItemReasons(
            'عندك علم بكل ما هو جديد.',
          ),
          defaultTextItemReasons(
            'بتحب تشتغل فى صمت.',
          ),
          defaultTextItemReasons(
            'عندك رؤية استراتيجية لتطوير المؤسسات. ✌',
          ),
          defaultTextItemReasons(
            'بتحب تعمل خطط على المدى الطويل.',
          ),
          defaultTextItemReasons(
            'عندك صبر للبحث والتكرار والتعلم.',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
