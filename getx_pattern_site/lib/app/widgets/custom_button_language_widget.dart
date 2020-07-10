import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomSelectLanguageWidget extends StatelessWidget {
  final List<Widget> languages = [];

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
        child: ButtonTheme(
      alignedDropdown: true,
      child: DropdownButton(
        underline: null,
        hint: Row(
          children: [
            Image.asset(
              'assets/images/br-flag.jpg',
              width: 30,
              height: 30,
            ),
          ],
        ),
        value: null,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 20,
        elevation: 16,
        onChanged: (value) => print('troca'),
        items: [
          DropdownMenuItem(
            value: 'pt-br',
            child: Image.asset(
              'assets/images/br-flag.jpg',
              width: 30,
              height: 30,
            ),
          ),
          DropdownMenuItem(
            value: 'en-US',
            child: Image.asset(
              'assets/images/en-flag.png',
              width: 30,
              height: 30,
            ),
          ),
          DropdownMenuItem(
            value: 'es-MX',
            child: Image.asset(
              'assets/images/es-flag.jpg',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    ));
  }
}
