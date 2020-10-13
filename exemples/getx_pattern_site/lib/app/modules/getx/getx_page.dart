import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/theme/app_text_theme.dart';
import 'package:getx_pattern_site/app/widgets/custom_image_container._widget.dart';
import 'package:getx_pattern_site/app/widgets/custom_title_widget.dart';
import 'package:getx_pattern_site/app/widgets/previous_next_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class GetXPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: ContainerResponsive(
                padding: EdgeInsetsResponsive.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitleWidget(title: 'GetX',),
                      TextResponsive('The focus of GetX is to have greater performance with minimum consumption of resources, at the same time, increasing the productivity, using an easy and pleasant syntax. \nSee the benchmarks', style: textContent,),
                      ContainerResponsive(
                        alignment: Alignment.center,
                        height: 350,
                        decoration: BoxDecoration( image: DecorationImage(image: AssetImage('assets/images/benchmark.png'))),
                      ),
                      TextResponsive(
                        'Organization, allowing the complete decoupling of your presentation layer from your business rule.', style: textContent,
                      ),
                      TextResponsive(
                        'Getx has the power to reconstruct only the widget when there is a state change in a .obs variable in its controller. That\'s because everything in it is flow, this allows us to hear the event for each \'variable\'.\n', style: textContent
                      ),
                      TextResponsive('Let\'s go to a first example of the application of GetX with getx_pattern, from the good old counter.\n', style: textContent,),
                      TextResponsive('We will use, in this example, only the main file, so that you are familiar with GetX concepts. Delete all content from your main.dart and keep, or copy and paste, just this snippet of code:', style: textContent,),
                      CustomImageContainerWidget(urlImage: 'assets/images/main_count.png',),
                      TextResponsive('After that, we will create our controller class, which allows us to create our business rule and control our states. Below the code above paste the following code:', style: textContent,),
                      CustomImageContainerWidget(urlImage: 'assets/images/controller_counter.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: TextResponsive('GetxController is responsible for providing us with the necessary methods to control our observables (.obs), allowing us to update our GetX widgets, responding to changes in the states of our application. In the example above we declare a variable and two methods, let\'s talk about them.', style: textContent,),
                      ),
                      TextResponsive('With GetX, we can extend the GetxController class, and with it we can create observable variables by adding a simple .obs and its initial state. \nfinal [var] = [initial-value] .obs; \n\nOur observable can only be final, and its type will be assigned from the initial-value inserted at the moment of the declaration, since it is final, it can only be inserted once.', style: textContent,),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: TextResponsive('But and now? If final can only be modified once, how will I change the value of this variable? The answer is as simple as it is short, .value', style: textContent,),
                      ),
                      TextResponsive('When creating your variable as an observable, it will create, behind the hood, an RxObject, for example, an int -> Rxint type, a List <User> () -> RxList <User> () type, and its value and original type is stored in its value attribute of that RxObject.', style: textContent,),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: TextResponsive('In the case of our Lists, it is not necessary to use the .value, so unlike an RxString where you would access the value contained with text.value, with the lists you can work normally, considering that both your list and the objects inside of it, they are all observable, so we can access their attributes this way myList.length or myList [index] .name.', style: textContent,),
                      ),
                      TextResponsive('We go to the Stateless class, responsible for visualizing our accountant. You are not wrong, with GetX you can never use a stateful again when changing your states, Cancel the setState, our widget GetX is reconstructed whenever an object, contained in it, has the state changed by the controller configured in the widget.let\'s go to the code.', style: textContent,),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0, bottom: 8.0),
                        child: CustomImageContainerWidget(urlImage: 'assets/images/page_counter.png'),
                      ),
                      TextResponsive('Well, this is a basic widget, we are just showing a text and two buttons responsible for triggering our decrement () and increment () events, remember? are in our controller.', style: textContent,),
                      
                      CustomNextPrevious()
                      
                  ]
                )
              )
            )
          );
  }
}
