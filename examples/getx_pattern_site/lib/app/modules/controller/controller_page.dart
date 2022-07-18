import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/apresentacao/widgets/item_list_widget.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:getx_pattern_site/app/widgets/custom_title_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ControllerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('ControllerPage')),
      body: SingleChildScrollView(
        child: ContainerResponsive(
          padding: EdgeInsets.only(top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitleWidget(
                title: 'Controller',
              ),
              ContainerResponsive(
                width: Get.width,
                margin: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextResponsive(
                      'This all about spearting things using controller',
                      style: textContent,
                    ),
                    CustomTitleWidget(title: 'Objective'),
                    TextResponsive(
                      'The main object, is to seperate business Logic from the Views',
                      style: textContent,
                    ),
                    TextResponsive(
                      ' But why?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: spotlightColor,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              ItemListWidget(
                text:
                    'Becuase when we are creating a project we want to divide logic in differnt files',
                color: softBlue,
              ),
              ItemListWidget(
                text:
                    'Becuase when we are creating a project we want to divide logic in differnt files',
                color: spotlightColor,
              ),
              ItemListWidget(
                text:
                    'Becuase when we are creating a project we want to divide logic in differnt files',
                color: softBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
