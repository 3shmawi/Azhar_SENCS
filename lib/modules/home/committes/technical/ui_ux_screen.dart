import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class UiUxScreen extends StatelessWidget {
  const UiUxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Ui/Ux',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition(
              'Ui&Ux',
              'ديزاين الواجهة بقي أسهل دلوقتى..!\nهي تصميم واجهات المستخدم\nوهي إنك بتعمل ديزاين لتطبيق أو موقع ويب من الصفر بكل التفاصيل من الألوان والأيقونات والخط وكذا حاجه ونهتم بالتفاصيل'
                  ' شويتين تلاته.\nو مش مقتصر علي كدا، دا انت كمان بتاخد بالك من إمكانية الوصول لكل عنصر ف الشا'
                  'شة ولما تضغط علي ايه تروح فين   اللي هي عندنا اسمها تجربة المستخدم UX وهي إمكانية أنه يتنقل بسهوله داخل الموقع أو التطبيق.😍',
              19),
          defaultTextItemCenterHeader(
            'UI/UX',
          ),
          defaultTextItemReasons(
            'تعرف إيه الفرق بين نظامي Dos وWindows.',
          ),
          defaultTextItemReasons(
            'بتحب تصميم التطبيقات اللى بتلبي أغراض متعددة في وقت واحد.',
          ),
          defaultTextItemReasons(
            'بتحب تتعامل مع البرامج ذات واجهات المستخدم الصوتية واللي بتوفر عليك وقت الكتابة.',
          ),
          defaultTextItemReasons(
            'عارف أساسيات التصميم من نظرية الألوان والكتابة والتباين.',
          ),
          defaultTextItemReasons(
            'بتعرف إزاي تصمم هوية أي علامة تجارية، وكل ما تحت الجملة دي من تصميم الشعارات والألوان واللي بتعتمد عليها البراندات بشكل دائم.',
          ),
          defaultTextItemReasons(
            'التمكن من استخدام برامج التصميم الأساسية زي برنامج Photoshop و برنامج illustrator.',
          ),
          defaultTextItemReasons(
            'بتعرف تستخدم برامج تانية برضو خاصة بتصميم واجهة المستخدم زي برنامج figma و برنامج adope XD Sketch.',
          ),
          defaultTextItemReasons(
            'تتعلم إزاي تتقن التصميم المتجاوب عشان يكون البرنامج اللى بتصممه صالح للاستخدام.',
          ),
          defaultTextItemReasons(
            'تتعلم إزاي تبحث في السوق، وتعمل دراسه للمنافسين.',
          ),
          defaultTextItemReasons(
            'تتعلم إزاي تعمل نماذج أولية للتطبيقات، واختبارها وتحليل النتائج',
          ),
          defaultTextItemReasons(
            'تتعلم إزاي تتواصل مع باقى أفراد فريقك.',
          ),
          defaultTextItemReasons(
            'تستغل مهاراتك في كل اللى فات في شيء يفيدك بدل الفراغ اللى أنت عايش فيه ده.',
          ),
          defaultTextItemReasons(
            'أخيرًا وليس آخرًا 😂 تعمل حاجة مفيدة بدل ما انت قاعد بتتمرقع كده.',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
