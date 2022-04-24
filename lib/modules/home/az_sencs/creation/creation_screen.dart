import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class CreationStoryScreen extends StatelessWidget {
  const CreationStoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Creation Story',
      ),
      body: defaultBody(
        Column(
          children: [
            defaultDefinition(
                'نشأة الفريق',
                'تم إنشاء الفريق عام 2010 بواسطة فكرة طرحها مجموعة من طلاب قسم النظم والحاسبات',
                15),
            defaultDefinition(
                'المؤسس',
                ' كانت الفكره بواسطة البشمهندس محمد طاهر وتبناها الأستاذ الدكتور علاء حموده',
                18),
            defaultDefinition(
              'ثم...',
              'وبعد ثلاث سنوات من نشأة الفريق وُلِد في محرابه معرض هندسة النظم والحاسبات كلية الهندسة جامعة الأزهر ، ومنذ ذلك الحين استمر المعرض فى التطور عام بعد الاخر وتنوعت الانشطة مابين التدريب والمدرسة الصيفية والكورسات والمنح المجانية وتنظيم المؤتمرات العملية والندوات وتنظيم الورش العملية والمعرض فى كل عام . ومنذ اللحظة الأولى لنا وما زلنا معكم ننسج خيوط الفكرة و نربطها بالواقع بأيادٍ أعطت الكثير ومازالت تسارع في العطاء  لنبنى مهندسا  قادرا عاملا مبدعا  فى شتى المجالات، بروعة التنفيذ كنا معكم وسنبقى دائما وابدا.  \n#لنُمَهِدَ_دَرْباً \n#صُنِع َفي الأزهر ',
            ),
          ],
        ),
      ),
    );
  }
}
