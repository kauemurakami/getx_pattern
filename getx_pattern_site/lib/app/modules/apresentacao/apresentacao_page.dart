import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:getx_pattern_site/app/widgets/custom_title_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ApresentacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerResponsive(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTitleWidget(title: "Apresentação",),
            Text('aaaaaa'),
            Text('aaaaaa')
          ],
        )
      ),
    );
  }
}
