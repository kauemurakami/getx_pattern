import 'package:flutter/material.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:getx_pattern_site/app/widgets/custom_title_widget.dart';
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
                  title: 'Apresentação',
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'A proposal for you that uses ',
                          style: textContent,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'GetX',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: softBlue)),
                            TextSpan(text: ' as your state manager!'),
                          ],
                        ),
                      ),
                      CustomTitleWidget(title: 'Objetivos'),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              'The main objective, is to make your programming with ',
                          style: textContent,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Flutter ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: softBlue)),
                            TextSpan(
                                text: '+',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: spotlightColor)),
                            TextSpan(
                                text: ' GetX ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: softBlue)),
                            TextSpan(
                                text:
                                    'more pleasant and intuitive than it already is! When there is a development pattern to be followed, everything is easier for those who use it.'),
                            TextSpan(
                                text: ' But why?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: spotlightColor))
                          ],
                        ),
                      ),
                      ContainerResponsive(
                        margin: EdgeInsetsResponsive.only(bottom: 8, top: 8),
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.fiber_manual_record,
                                  color: spotlightColor,
                                )),
                            Expanded(
                              flex: 7,
                              child: TextResponsive(
                                'Because that way, we can communicate "universally" with people who also follow these same standards and package.',
                                style: textContent,
                              ),
                            )
                          ],
                        ),
                      ),
                      ContainerResponsive(
                        margin: EdgeInsetsResponsive.only(bottom: 8),
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.fiber_manual_record,
                                  color: softBlue,
                                )),
                            Expanded(
                              flex: 7,
                              child: TextResponsive(
                                'There are infinite ways to solve the same problem, so patterns have a very important role in that, the same problems, can still be solved in several ways, but with a certain flow to be followed, with this we managed to direct the programmer in a shorter and more concise path.',
                                style: textContent,
                              ),
                            )
                          ],
                        ),
                      ),
                      ContainerResponsive(
                        margin: EdgeInsetsResponsive.only(bottom: 8),
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.fiber_manual_record,
                                  color: spotlightColor,
                                )),
                            Expanded(
                              flex: 7,
                              child: TextResponsive(
                                'This makes it much easier to resolve your doubts and share knowledge when using the same standard.',
                                style: textContent,
                              ),
                            )
                          ],
                        ),
                      ),
                      ContainerResponsive(
                        margin: EdgeInsetsResponsive.only(bottom: 8),
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.fiber_manual_record,
                                  color: softBlue,
                                )),
                            Expanded(
                              flex: 7,
                              child: TextResponsive(
                                'Your project will not be dependent on who built it, as other programmers will be able to read and change the code without difficulty.',
                                style: textContent,
                              ),
                            )
                          ],
                        ),
                      ),
                      ContainerResponsive(
                        margin: EdgeInsetsResponsive.only(bottom: 8),
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.fiber_manual_record,
                                  color: spotlightColor,
                                )),
                            Expanded(
                              flex: 7,
                              child: TextResponsive(
                                'You will have a better use in the reuse of your code, being able to reuse several widgets from other projects for example, that it will fit perfectly in your project.',
                                style: textContent,
                              ),
                            )
                          ],
                        ),
                      ),
                      ContainerResponsive(
                        margin: EdgeInsetsResponsive.only(bottom: 8),
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.fiber_manual_record,
                                  color: softBlue,
                                )),
                            Expanded(
                              flex: 7,
                              child: TextResponsive(
                                'That you can apply the use of GetX in professional projects, having documentation in hand, with that, more security for those who program, whether you are a company or a student in search of knowledge.',
                                style: textContent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
