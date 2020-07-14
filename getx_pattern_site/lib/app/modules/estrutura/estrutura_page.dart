import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/estrutura/estrutura_controller.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:getx_pattern_site/app/widgets/custom_title_widget.dart';
import 'package:getx_pattern_site/app/widgets/previous_next_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class EstruturaPage extends StatelessWidget {
  final EstruturaController controller = Get.put(EstruturaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: ContainerResponsive(
                padding: EdgeInsetsResponsive.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitleWidget(
                        title: 'Structure',
                      ),
                      ContainerResponsive(
                        margin: EdgeInsetsResponsive.all(16.0),
                      ),
                      TextResponsive(
                        'You can feel free to use the structure you want in modules or packages, over time we will be creating exenplos and creating them in both ways. \nThe initial example will offer you the same tabs so you can follow the construction of the project in both ways with the same code, so lets get started!',
                        style: textContent,
                      ),
                      Padding(
                        padding: EdgeInsetsResponsive.only(top: 8.0),
                        child: TextResponsive(
                          'First let\'s take a look at our structures and choose the one that best suits or pleases you.',
                          style: textContent,
                        ),
                      ),
                      Obx(
                        () => Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextResponsive(controller.structureType(),
                                    style: TextStyle(
                                        color: softBlue, fontSize: 20)),
                                IconButton(
                                    icon: Icon(
                                      Icons.touch_app,
                                      color: spotlightColor,
                                    ),
                                    onPressed: null),
                              ],
                            ),
                            GestureDetector(
                              onTap: ()=> controller.changeStructure(),
                              child: ContainerResponsive(
                                alignment: Alignment.center,
                                height: 300,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(controller
                                            .strc[controller.structure]))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextResponsive('Now that you know the proposal and have given a good analysis in the presentation of the structure, let \'s take a moment to talk briefly about it, before introducing you to the GetX section, so you can follow our examples without difficulty or questions about our naming or flow standards, well, let \'s talk quickly one by one now, do not worry if you are adventuring and do not know some of the concepts that will be covered here, this is just a formal presentation with the structure, we’ll talk in more detail about each one, with examples in their respective sections.', style: textContent,),
                      CustomNextPrevious()
                    ]))));
  }
}
