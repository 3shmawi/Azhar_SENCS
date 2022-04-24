import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class OrgScreen extends StatelessWidget {
  const OrgScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about ORG.',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultHeaders('الرؤيه'),
          defaultTextItemSecond(
            'اخراج كل الاحداث الخاصة بالفريق بأعلى مستويات التنظيم وأبهى صورها.',
          ), const SizedBox(
            height: 10,
          ),
          defaultHeaders('الرساله'),
          defaultTextItemSecond(
            'وضع الرتوش واللمسة الاخيرة لإظهار مجهود باقي لجان الفريق في أي حدث.',
          ),
          defaultTextItemSecond(
            'تهيئة الجو العام داخل لجان ومناسبات الفريق لتحقيق أقصى استفادة ممكنة.',
          ),
          defaultTextItemSecond(
            'تهيئة أعضاء اللجنة لمواكبة سوق العمل بالنسبة لجانب التنظيم واللوجستيك.',
          ),
          defaultTextItemSecond(
            'معرفة احتياجات اللجنة من أعمال الديكور واللوجستيك ومتطلبات التنظيم وتوفيرها.',
          ),
          defaultTextItemCenterHeader('OC'),
          defaultTextItemReasons(
            'هتكون مسؤول عن الإجتماعات الخاصة والحفلات والمناسبات.',
          ),
          defaultTextItemReasons(
            'مسؤول عن الماتريال كلها.',
          ),
          defaultTextItemReasons(
            'مسؤول عن وضع ال timeline الخاص بالفريق.',
          ),
          defaultTextItemReasons(
            'تجهيز القاعات، وأماكن الإيفنتات، وعن اليوم كله.',
          ),
          defaultTextItemReasons(
            'حلقة الوصل بين كل اللجان، وجزء لا يتجزأ عنهم.',
          ),
          defaultTextItemReasons(
            'مسئول عن تجهيز متطلبات المشاريع اللي هتتعرض في معرض هندسة النظم والحاسبات.',
          ),
          defaultTextItemReasons(
            'بتسهل العقبات قدام أي لجنة.',
          ),
          defaultTextItemReasons(
            'بتحقق التوازن بين الآراء اللي بيعبر عنها الأشخاص المختلفة.',
          ),
          defaultTextItemReasons(
            'بتفاضل بين القرارات، وبتقبل أفضلها.',
          ),
          defaultTextItemReasons(
            'شغل الهاند ميد كمان عليك، وتصميم الديكور للفقرات والأحداث.',
          ),
          defaultTextItemReasons(
            'بتنظيم أي شغل أوفلاين بيقوم به الفريق.',
          ),
          defaultTextItemReasons(
            'بتظهر التيم في أفضل حالة في أي حفلة أو إيفينت أوفلاين.',
          ),
          defaultTextItemReasons(
            'وأخيرًا بتمثل وِجهة التيم (لإنه بيتعامل مع الجمهور).',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
