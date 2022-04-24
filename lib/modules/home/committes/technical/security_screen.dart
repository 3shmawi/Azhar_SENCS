import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Cyber Security',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition(
              'Security',
              'طفل 14 سنة اي اللي يخترق فيسبوك..!\nاعتبر '
                  'اننا عصابه و عاوزين نسرق بيت، هنسرقه ازاي ؟\n-هدور علي مكان ادخل '
                  'منه!\n= بالظبط و دا المطلوب إنك'
                  ' تدور علي أضعف مكان تدخل منه، ودا بقا وارد يكون:\n▪️في الشبكه'
                  ' نفسها و بنسميه Network Penetration testing .\n▪️ في الموقع بتاع الشركه او اي موقع تابع '
                  'ليها و دا اسمه Web Application Penetration Testing.\n▪️ في ال '
                  'mobile application (android /IOS ) و دا اسمه Mob App penetration '
                  'Testing.\n▪️و غيره سواء في ال cloud او ال iot او ال social engineering'
                  ' .\nكل الطرق دي كفيله انها توصلنا لاختراق أي شركة\n\nطب انا كواحد مبتدئ و نفسي اتعلم المجال'
                  ' دا المفروض أعمل إيه؟\n▪️ أول'
                  ' حاجة انت المفروض تعرف يعني شبكه، وازاي بتتعمل؟\n▪️تعرف الفرق بين '
                  'الأجهزة وبعضها و تعرف كل port بيشتغل عليه ايه ؟ \n▪️هتبدأ تعرف ايه هي أنظمة التشغيل '
                  'و ازاي تتعامل معاها،زي Windows و Linux.\n▪️بعد كدا بتاخد نبذه مختصره عن لغات البرمجه'
                  ' عشان تقدر تفهم الاكواد اللي بتواجهها.\n\nبعد كدا يا بطل انت جاهز تتعلم'
                  ' cyber security .\nهنا بقا هنبدأ نسطب ال lab بتاعنا اللي هنشتغل عليه\nاللي هو'
                  ' virtual box او VMware \nو هنسطب عليه ال machines اللي اتعملناها فوق سواء Windows '
                  'او linux، وبعد كدا هنبدأ نفهم اساسيات التشفير و نبدأ نحلل ال traffics الخاصه بالشبكه اللي هنشتغل عليها او الموقع، وبعدين هنبدأ'
                  ' ندرس الثغرات الخاصه بالمواقع و هناخد ليها امثله موجوده فعلا في مواقع، وبعد كدا هندرس ازاي نعلي بالثغره بتاعتنا دي لاعلي تأثير ليها داخل الموقع، و بعد كدا هنتعلم ازاي '
                  'نكتب ال reports\n\nو اخر حاجة هنتعلم ازاي نشتغل علي منصات اكتشاف الثغرات bug bounty platforms زي hackerone و bugcrowd.',
              19),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
