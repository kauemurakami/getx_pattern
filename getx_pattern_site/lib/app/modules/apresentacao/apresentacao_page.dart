import 'package:flutter/material.dart';
import 'package:getx_pattern_site/app/modules/apresentacao/widgets/item_list_widget.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:getx_pattern_site/app/widgets/custom_title_widget.dart';
import 'package:getx_pattern_site/app/widgets/previous_next_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:get/get.dart';

class ApresentacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: ContainerResponsive(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTitleWidget(
              title: 'getx_pattern',
            ),
            ContainerResponsive(
              width: Get.width,
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextResponsive(
                    'A proposal for you that uses GetX as your state manager!',
                    style: textContent,
                  ),
                  CustomTitleWidget(title: 'Objective'),
                  TextResponsive(
                    'The main objective, is to make your programming with Flutter + GetX more pleasant and intuitive than it already is! When there is a development pattern to be followed, everything is easier for those who use it.',
                    style: textContent,
                  ),
                  TextResponsive(' But why?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: spotlightColor, fontSize: 20))
                ],
              ),
            ),
            ItemListWidget(
              text:
                  'Because that way, we can communicate "universally" with people who also follow these same standards and package.',
              color: spotlightColor,
            ),
            ItemListWidget(
                text:
                    'There are infinite ways to solve the same problem, so patterns have a very important role in that, the same problems, can still be solved in several ways, but with a certain flow to be followed, with this we managed to direct the programmer in a shorter and more concise path.',
                color: softBlue),
            ItemListWidget(
              text:
                  'This makes it much easier to resolve your doubts and share knowledge when using the same standard.',
              color: spotlightColor,
            ),
            ItemListWidget(
              text:
                  'Your project will not be dependent on who built it, as other programmers will be able to read and change the code without difficulty.',
              color: softBlue,
            ),
            ItemListWidget(
                text:
                    'You will have a better use in the reuse of your code, being able to reuse several widgets from other projects for example, that it will fit perfectly in your project.',
                color: spotlightColor),
            ItemListWidget(
              text:
                  'That you can apply the use of GetX in professional projects, having documentation in hand, with that, more security for those who program, whether you are a company or a student in search of knowledge.',
              color: softBlue,
            ),
            CustomNextPrevious()
          ],
        ),
      ),
    ));
  }
}
