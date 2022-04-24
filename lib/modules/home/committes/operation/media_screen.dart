import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';


class MediaScreen extends StatelessWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        const RouteWhereYouGo(),
        'Info about Media',
      ),
      body: defaultBody(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultHeaders('الرؤيه'),
          defaultTextItemSecond(
            'اخراج أعمال الفريق في أجمل صوره.',
          ),
          const SizedBox(
            height: 10,
          ),
          defaultHeaders('الرساله'),
          defaultTextItemSecond(
            'العمل على تأهيل أعضاء أكفاء في كل تراكات اللجنه ليكون الفريق متميز الظهور.',
          ),
          defaultTextItemCenterHeader(
            'Media',
          ),
          defaultTextItemReasons(
            'لو انت شخص كريتيف. 😌',
          ),
          defaultTextItemReasons(
            'بتحب التصوير.',
          ),
          defaultTextItemReasons(
            'بتحب الفيديو إيديتنج.',
          ),
          defaultTextItemReasons(
            'مهتم بالجرافيك ديزاين.',
          ),
          defaultTextItemReasons(
            'عندك مهارة ال multi tasking. 😎',
          ),
          defaultTextItemReasons(
            'عندك مهارة إدارة الوقت.',
          ),
          defaultTextItemReasons(
            'لو حابب تراك من التراكات دي (فوتوشوب - اليستراتور - مونتاج - تصوير) ف دة اللي بيميز لجنة الميديا.',
          ),
          defaultTextItemReasons(
            'عندك معرفة ببرامج adobe photoshop و adobe illustrator -لو عايز تقدم ك جرافيك ديزاينر.',
          ),
          defaultTextItemReasons(
            'عندك معرفة ببرامج adobe premier و adobe aftereffect -لو عايز تقدم ك موشن أو فيديو إيديتنج. ✌',
          ),
          defaultTextItemReasons(
            'عندك إبداع فى تنسيق الألوان.',
          ),
          defaultTextItemReasons(
            'بتحب تتعلم تكنيكات جديدة.',
          ),
          defaultTextItemReasons(
            'بتحب تركب وتنسق تراكات مختلفة.',
          ),
          defaultTextItemReasons(
            'مهتم بالمونتاج.',
          ),
          defaultCommunication(),
        ],
      ),),
    );
  }
}
