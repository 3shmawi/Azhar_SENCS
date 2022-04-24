import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Network',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition(
              'Network',
              '"يعني أنا أفتح التليفون وأكلم عمك اللي في السعودية!..طب ازاي"\nالشبكات من اسمها وهي إنك بتربط أي حاجة مع بعض زي الأجهزة سواء '
                  'كمبيوتر أو موبايل بيتواصلوا مع بعض.\nأو توصل الموبايل اللي انت ماسكه ده بالراوتر وازاي بقا  بيلقط منه شبكه واكيد '
                  'مش مقتصر الكلام ده علي البيت  عندك دا العالم كله بيتواصل مع بعضه عن طريق شبكة واحده وهي الشبكة العنكبوتية (الإنترنت).\nمجال الشبكات دلوقتي بقي جزء أساسي من العمليات التجاريه ف العالم لأنه بشكل أساسي مسئول عن نقل وحماية البيانات والبرمجيات من الهجمات الاختراقية.\nمعانا هتعرف كل الأساسيات عن الشبكات من أول مكونات السلك المستخدم في أي وصلة لحد تصميم الشبكات بمواصفات عاليه وبأقل تكلفه تخلي شبكتك مفيش زيها يعني من الآخر هتبقي محترف شبكات معانا.😍',
              19),
          defaultTextItemCenterHeader('Network'),
          defaultTextItemReasons(
            'مجال الشبكات مجال واسع، وهتقدر تلاقي فيه فرص عمل كويسة جداً.',
          ),
          defaultTextItemReasons(
            'هتقدر تشتغل ك Network engineer، ودا مفيش مؤسسة تقدر تستغنى عنه. 🔥',
          ),
          defaultTextItemReasons(
            'تقدر تشتغل ك Security.. المجال دا منتشر في مصر، ويعتبر فرصة عظيمة للي حابب يسافر برا لإنه مطلوب جداً. 😉',
          ),
          defaultTextItemReasons(
            'كمان تقدر تشتغل ك VoIP أو ك Data center.',
          ),
          defaultTextItemReasons(
            'هتتعلم الصبر والمثابرة على حل المشاكل.',
          ),
          defaultTextItemReasons(
            'هتقدر تتعلم مهارات التواصل الفعّال لإن هيكون مطلوب منك العمل ضمن فريق. 😌',
          ),
          defaultTextItemReasons(
            'هيكون عندك القدرة على تحديد المشكلات، والعمل على حلها خلال فترة صغيرة.',
          ),
          defaultTextItemReasons(
            'هتكتسب مهارات القيادة.',
          ),
          defaultTextItemReasons(
            'هتكتسب الخبرة والمعرفة الواسعة في مجال التكنولوجيا والمعلومات. 😉',
          ),
          defaultTextItemReasons(
            'هتكتسب مهارات ال Stem ودي مهارات العلوم والتكنولوجيا والهندسة والرياضيات.',
          ),
          defaultTextItemReasons(
            'ومعانا في AZ_SENCS هتتعلم من أول السلك اللي بتتنقل عليه الداتا لحد ما تكون شبكتك كلها بالمواصفات المطلوبة.',
          ),
          defaultTextItemReasons(
            'هتاخد مقدمة عن الشبكات، وهتتعمق فيها.',
          ),
          defaultTextItemReasons(
            'هتتعلم CCNA بكل تفاصيلها، وهتطبق عليها عملي كمان. 😌',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
