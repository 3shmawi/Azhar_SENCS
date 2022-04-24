import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class VisionAndMessageScreen extends StatelessWidget {
  const VisionAndMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about our Vision',
      ),
      body: defaultBody(Column(
        children: [
          defaultHeaders('الرؤيه'),
          defaultTextItemSecond(
            'الارتقاء بجامعة الأزهر',
          ),
          defaultTextItemSecond(
            'إعداد مهندس أزهري مسلم مبتكر ومبدع في المجاالت التطبيقية والعملية في بعض التخصصات الهندسية والبرمجية.',
          ),
          const SizedBox(
            height: 10,
          ),
          defaultHeaders('الرساله'),
          defaultTextItemSecond(
            'إعداد مسابقة قسم النظم والحاسبات.',
          ),
          defaultTextItemSecond(
            'إعداد مناسبات علمية وعملية تخدم الطالب في المجاالت الهندسية عموما ومجال هندسة النظم والحاسبات خصوصا. ',
          ),
          defaultTextItemSecond(
            'تحفيز الطلبه على المشاركة فى المسابقات العلمية في المعارض وغيرها. ',
          ),
          defaultTextItemSecond(
            'تحسين صورة القسم لدى الجامعات الأخرى.',
          ),
          defaultTextItemSecond(
            'تنفيذ ورش عمل تقنية ودورات تدريبية فى مجالات الشبكات والإلكترونيات والقوى والحاسبات. ',
          ),
          defaultTextItemSecond(
            'توفير تدريب صيفى لطلبة قسم النظم والحاسبات عن طريق المدرسة الصيفية ومعرض تدريب وتوظيف.',
          ),
          defaultTextItemSecond(
            'تأهيل الطلبه للمشاركة فى المسابقات الهندسية على مستوى الجمهورية والمنافسة فى المحافل الدولية.',
          ),
          defaultTextItemSecond(
            'تقديم الورش التأهيلية في المسارات الهندسية والتطبيقية الأساسية لقسم النظم والحاسبات.',
          ),
          defaultTextItemSecond(
            'عمل معرض هندسة النظم والحاسبات بنهاية كل موسم للفريق، يعرض فيه مشاريع الطالب من جميع جامعات مصر.',
          ),
        ],
      ),),
    );
  }
}
