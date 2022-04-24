import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';


class ControlScreen extends StatelessWidget {
  const ControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Control',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultDefinition(
              'Control',
              '- عارف مقولة اضرب عصفورين بحجر؟\n= أيوا عارفها.\n-'
                  ' حسيتها قبل كدا في مجالك؟\n= لا خالص، ماعندناش ياما ارحميني.\n-'
                  ' طب تاخد زتونة مجال ال Network\n= الNetwork؟  هو إيه الNetwork؟\n'
                  'تفتكر إيه الأسهل لو أنت في مجموعة أنت وزمايلك '
                  'وعايز تبعت داتا للكل؟😕\n'
                  'هل أنت هتقعد تلف على كل واحد وتديله الداتا؟ ولا هتحملها على جوجل'
                  ' درايف مثلًا زي ما بنعمل والكل يدخل يحمل الداتا من عليه؟!\n- هو دا'
                  ' يعني إيه؟\n= نتورك.☺\n- وليه النتورك؟ \nبُص يا سيدي، أي شبكة بتكون عبارة عن مجموعة'
                  ' مستخدمين عايزين يستفيدوا من خدمة معينة، والخدمات كتير جدًا، منها إنهم يتواصلوا مع بعض،'
                  ' أو مشاركة لموارد زي الطابعة، أو'
                  ' مشاركة ملفات وفيديوهات وغيره.\n - طب وأنا هستفاد إيه؟🤔\nالشبكة هتسهل علينا '
                  'حاجات كتير، وبتوفر في المجهود وكمان التكلفة. \n بردو مش فاهم اوي؟! \nخُد مثال، الشبكة المنزلية'
                  ' اللي عندنا '
                  'في البيت رابطه أجهزتنا سوا '
                  'وبتقدملنا خدمة معينة، وهي الوصول للإنترنت اللي هو أكبر شبكة موجودة.'
                  ' \nوبنعرف كمان إزاي الإنترنت دا متكون...'
                  ' وهو عبارة عن إيه وازاي بنتعامل مع بعض على الانترنت، '
                  'وازاي '
                  'الراوتر اللي عندنا في البيت دا بيساعدني إني أوصل للإنترنت.\nيعني من الآخر هتضرب عصافير كتير'
                  ' بحجر واحد.😌',
              19),
          defaultTextItemCenterHeader(
            'Classic Control',
          ),
          defaultTextItemReasons(
            'من التراكات المهمة جداً ومش لمهندس كهرباء بس، بيستفيد منه مهندس ميكانيكا وحاسبات كمان. 😎',
          ),
          defaultTextItemReasons(
            'مجال من المجالات المهمة في العمليات الصناعية بسبب درجة أمانه.',
          ),
          defaultTextItemReasons(
            'هتعرف دوائر الكلاسيك كنترول سواء بقا دائرة باور أو دائرة كنترول.',
          ),
          defaultTextItemReasons(
            'أي فكرة في بالك بتجربها وتعملها معانا في التراك دا. 💪',
          ),
          defaultTextItemReasons(
            'هتتعرف معانا كمان إزاي تتحكم في الكهربا.',
          ),
          defaultTextItemReasons(
            'هتعرف الكهرباء دي إزاي بيتم توليدها ومصادرها إيه.',
          ),
          defaultTextItemReasons(
            'هتعرف أسباب عطل الماكينات، وطرق تصليحها.',
          ),
          defaultTextItemReasons(
            'من التراكات اللي مبنقدرش نستغني عنها، وبنتعامل معاها كل يوم.',
          ),
          defaultTextItemReasons(
            'هتعرف التركيبات اللي في البيت؛ عشان مينفعش تبقى مهندس ومتعرفهاش. 😉',
          ),
          defaultTextItemReasons(
            'هتتعلم فكرة عمل الريلاى والكونتاكتور بأنواعه، والفرق ما بينهم.',
          ),
          defaultTextItemReasons(
            'هتشتغل دوائر عملي كتير والكومبوننت موجود متقلقش.️',
          ),
          defaultTextItemReasons(
            'هتشتغل كمان نظري بإنك ترسم الدوائر.',
          ),
          defaultTextItemReasons(
            'التراك دا بيحطك على بداية الطريق العملى الحقيقي في مجال التحكم الآلي.',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
