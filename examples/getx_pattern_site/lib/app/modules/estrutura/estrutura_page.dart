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
                        'structure_you_can_feel_free_to_use'.tr,
                        style: textContent,
                      ),
                      Padding(
                        padding: EdgeInsetsResponsive.only(top: 8.0),
                        child: TextResponsive(
                          'structure_first_lets_take_a_look'.tr,
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
                                        color: softBlue, fontSize: 18)),
                                IconButton(
                                    icon: Icon(
                                      Icons.touch_app,
                                      color: spotlightColor,
                                    ),
                                    onPressed: null),
                              ],
                            ),
                            GestureDetector(
                              onTap: () => controller.changeStructure(),
                              child: ContainerResponsive(
                                alignment: Alignment.center,
                                height: 300,
                                width: Get.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(controller
                                          .strc[controller.structure])),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextResponsive(
                        'structure_Now_that_you_know_the'.tr,
                        style: textContent,
                      ),
                      CustomTitleWidget(
                        title: 'Model',
                      ),
                      Center(
                        child: TextResponsive(
                          'structure_It_is_the_directory_that_will'.tr,
                          style: textContent,
                        ),
                      ),
                      CustomTitleWidget(
                        title: 'Provider',
                      ),
                      Center(
                        child: TextResponsive(
                          'structure_It_is_the_directory_responsible_for'.tr,
                          style: textContent,
                        ),
                      ),
                      CustomTitleWidget(
                        title: 'Repository',
                      ),
                      Center(
                        child: TextResponsive(
                          'structure_It_is_a_single_point_of_access'.tr,
                          style: textContent,
                        ),
                      ),
                      CustomTitleWidget(
                        title: 'Data',
                      ),
                      Center(
                        child: TextResponsive(
                          'structure_It_is_the_directory_that_will_group_all'
                              .tr,
                          style: textContent,
                        ),
                      ),
                      CustomTitleWidget(
                        title: 'Controller',
                      ),
                      Center(
                        child: ContainerResponsive(
                          width: Get.width / 1.2,
                          child: TextResponsive(
                            'structure_Our_controllers_are_nothing_more_than'
                                .tr,
                            style: textContent,
                          ),
                        ),
                      ),
                      CustomTitleWidget(
                        title: 'UI',
                      ),
                      Center(
                        child: TextResponsive(
                          'É tudo que o usuário vê, seus widgets, animações, textos, temas.'
                              .tr,
                          style: textContent,
                        ),
                      ),
                      CustomTitleWidget(
                        title: 'Routes',
                      ),
                      Center(
                        child: TextResponsive(
                          'structure_It_is_the_directory_responsible_for_containing_our_files_which'
                              .tr,
                          style: textContent,
                        ),
                      ),
                      CustomTitleWidget(
                        title: 'Translations',
                      ),
                      Center(
                        child: TextResponsive(
                          'structure_translation_info'.tr,
                          style: textContent,
                        ),
                      ),
                      CustomTitleWidget(
                        title: 'Bindings',
                      ),
                      Center(
                        child: TextResponsive(
                          'structure_bindings_info'.tr,
                          style: textContent,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsetsResponsive.only(top: 8.0),
                          child: TextResponsive(
                            'structure_Now_that_you_know_a_little_more_about_our_structure'
                                .tr,
                            style: textContent,
                          )),
                      CustomNextPrevious()
                    ]))));
  }
}
