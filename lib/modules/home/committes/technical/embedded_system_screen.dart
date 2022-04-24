import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class EmbeddedSystemScreen extends StatelessWidget {
  const EmbeddedSystemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about ES.',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition(
              'Embedded',
              'أيوا يعني هو هاردوير ولا سوفت وير!\nعندنا الانظمه بتتقسم ل ثلاثة أنظمة:\nسوفت وير و ده عباره عن نظام بالكامل سوفت أكواد برمجيه بتتنفذ عشان حاجة معينة و بتتنفذ ع الهارد و الرامات و ده جزء الهارد المتعلق بيها إنما هي ك تنفيذ سطور من الأكواد و ده زي كل تطبيقات الموبايل و أنظمة التشغيل و ما إلى ذلك\n\nو فيه نظام هارد وير بالكامل و ده عباره عن مكونات هارد ملموسة وملهوش أي علاقة بالسوفت أو الأكواد نهائيا و ده زي مروحة السقف عباره عن  موتور و أسلاك و محول و سويتش و مغير سرعات '
                  'و بس كدا و بردو زي اللمبة أسلاك و لمبة و زرار و الكهرباء و بس كدا أجزاء هارد وير بس .\n\nالنظام التالت ده بقا اللي جمع ما بين النظامين اللي فاتوا، هو مش هارد بس ولا سوفت بس'
                  '.🤏\nهو الاتنين ✌️\nاسمه النظام المدمج Embedded system\nببساطه عباره عن أكواد سوفت وير بتتحكم ف المكونات الهاردوير عبر تنفيذها'
                  ' على متحكم دقيق اسمه ميكروكنترولر \nاللي قولتها ف الكود اللي كتبته 😃  \nزي ايه كدا \nمثلا زي الغسالات الفول اوتوماتيك الحديثة دلوقتى، الطيارات، توجيه الصورايخ ،IOT'
                  ' (انترنت الاشياء) و ما إلى ذلك كثير جدا.\n\nيبقا الامبيدد هو:\nدمج الكود اللي هو السوفت وير مع الأجزاء الهاردوير و السوفت بقا ده داخليا اللي متوصل به كل الأجزاء الهارد دي عشان يتحكم فيها من خلال الاكواد المتبرمجه عليه.🔥',
              19),
          defaultTextItemCenterHeader(
            'Embedded',
          ),
          defaultTextItemReasons(
            'لو أنت بتعرف لغة ال C.',
          ),
          defaultTextItemReasons(
            'هتتعلم Embedded C ودي طريقة مختلفة لكتابة الكود. ✌️',
          ),
          defaultTextItemReasons(
            'هتتعلم إزاي تدرس وتطبق على ال controller.',
          ),
          defaultTextItemReasons(
            'هتتعلم إزاي تكتب الداتا شيت.',
          ),
          defaultTextItemReasons(
            'لو أنت مهندس إتصالات فهتحتاج الإيمبيديد في base station.',
          ),
          defaultTextItemReasons(
            'لو أنت مهندس ميكانيكا فبتزيد فرص عملك في الAutomotive لصناعة العربيات. 🔥',
          ),
          defaultTextItemReasons(
            'تقدر تشتغل في ال testing  لل ECU.',
          ),
          defaultTextItemReasons(
            'تقدر تشتغل في مجال ال development.',
          ),
          defaultTextItemReasons(
            'هتقدر تشتغل في مجال ال Switches & Routers.',
          ),
          defaultTextItemReasons(
            'تقدر تشتغل في مجال الMobile phones & Tablets. 🤝',
          ),
          defaultTextItemReasons(
            'تقدر تشتغل في المجال الطبي "Medical devices".',
          ),
          defaultTextItemReasons(
            'تقدر تشتغل في ال safety analysis.',
          ),
          defaultTextItemReasons(
            'وأخيرًا وليس آخرًا هتكتسب الكثير من المهارات التقنية والشخصية المختلفة. زي ما شفت فرص شغل المجال دا كتير جداً فمتفوتش الفرصة، وابدأ طريق النجاح من دلوقتي. 🔥',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}