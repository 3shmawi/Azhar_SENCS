import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


import '../../../../shared/components/components.dart';
import '../../../../shared/network/remote/open_link_handler.dart';


class TestingScreen extends StatelessWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Testing',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition(
              'Testing',
              'أقوله التطبيق اللي انت عاملهولي مش شغال، يقولي عامله Testing صح!! \nال Software Testing دا عبارة عن مرحلة من مراحل تطوير البرنامج بيتأكد فيها مهندس الاختبار(Tester) ان البرنامج شغال طبقاً للمواصفات اللى طلبها العميل وان البرنامج شغال بكفاءة عالية.👌\nطب مهم فى ايه التيستينج دا؟ \nمهم فى حجات كتير جدا زى مثلا:\n▪️إيجاد الأخطاء 🧐\n▪️التأكد من إن السوفت وير شغال بأفضل أداء ليه.💪 \nعن طريق انى بعمل تيستينج السوفت وير على أجهزة مشابهة للأجهزة الحقيقية اللى هيشتغل عليها يعنى لو هو موقع ويب مثلا نعمل تيستينج على المتصفحات وهكذا.\nلو فاكر الموضوع بسيط، فأحب أعرفك إن بسبب خطأ بسيط زي ده شركة "بيبسي" دفعت مليارات.',

              19),

          defaultCommunication(),
        ],
      ),),
    );
  }
}