import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class PrScreen extends StatelessWidget {
  const PrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about PR',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultHeaders('الرؤيه'),
          defaultTextItemSecond(
            'توفير كافة رغبات واحتياجات الفريق المادية والعلمية والقانونية.',
          ),
          const SizedBox(
            height: 10,
          ),
          defaultHeaders('الرساله'),
          defaultTextItemSecond(
            'إيصال رؤية ورسالة الفريق إلى الشريحة المستهدفة، القادرة على تلبية احتياجات الإدارة.',
          ),
          defaultTextItemSecond(
            'عمل التصاريح القانونية الالزمة الستمرارية نشاط الفريق وتوسعه. ',
          ),
          defaultTextItemSecond(
            'إتمام الصفقات التي تيِّسر الوصول ألهداف الفريق وتحقيق رؤيته.',
          ),
          defaultTextItemSecond(
            'رفع إنتاجية الفريق، بتوفير ما يحتاجه الأعضاء من مدربين وأدوات.',
          ),
          defaultTextItemSecond(
            'دارة ماديات الفريق وتوزيع الصادرات والواردات بما يحقق أكبر إشباع ممكن لرغبات واحتياجات الفريق.',
          ),
          defaultTextItemCenterHeader('Public Relations'),
          defaultTextItemReasons(
            'عندك شبكة علاقات كبيرة وشخصية اجتماعية. 🥰',
          ),
          defaultTextItemReasons(
            'مهارة التواصل عندك عالية.',
          ),
          defaultTextItemReasons(
            'شخصيتك قيادية وواثق في نفسك وفي قدراتك. 😎',
          ),
          defaultTextItemReasons(
            'مهارة التفاوض عندك عالية.',
          ),
          defaultTextItemReasons(
            'تقدر تقنع اللي قدامك برغبتك.',
          ),
          defaultTextItemReasons(
            'مهارة البحث عندك كويسة، وتقدر توصل للمعلومة اللي محتاجها. 😌',
          ),
          defaultTextItemReasons(
            'بتحب تحضر إيڤنتات وبتركز أوي مع ترتيب اليوم ومع الحضور. 😍',
          ),
          defaultTextItemReasons(
            'تقدر توفر instructors في أي مجال تحتاجه.',
          ),
          defaultTextItemReasons(
            'واسع الأفق، وعارف Speakers كتير في مجالات مختلفة؛ تقدر تجيبهم في الإيڤنتات بتاعتنا.',
          ),
          defaultTextItemReasons(
            'تعرف تحجز قاعات، سواء لإيڤنتات أو اجتماعات، أو الكورسات اللي بيقدمها الفريق. 🎉',
          ),
          defaultTextItemReasons(
            'قادر توفر Sponsors يدعموا الأحداث اللي بنعملها.',
          ),
          defaultTextItemReasons(
            'تعرف تتواصل مع الصحفيين؛ عشان ننشر مقالات عن الأحداث بتاعتنا.',
          ),
          defaultTextItemReasons(
            'تعرف تعمل  مع الـ partnership',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
