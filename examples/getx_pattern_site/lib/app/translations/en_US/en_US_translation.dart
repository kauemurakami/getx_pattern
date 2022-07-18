part './strings_en_us.dart';

final Map<String, String> enUs = {
  'Home': HOME,
  'Structure': STRUCTURE,
  'GetX': GETX,
  'Data': DATA,
  'Provider': PROVEDOR,
  'Model': MODEL,
  'Repository': REPOSITORIO,
  'Controller': CONTROLLER,
  'Bindings': BINDINGS,
  'UI': UI,
  'Routes': ROTAS,
  'Translations': TRANSLATIONS,
  'Tutorials': TUTORIAIS,
  'oi': OI,
  'GetX_Pattern': 'GetX Pattern',
  'Project_using_GetX_Library': 'Project using GetX Library !!!',
  'getx_pattern': 'getx_patrona',
  'getx_a_proposal_for_you':
      'A proposal for you that uses GetX as your state manager!',
  'getx_the_main_objective':
      'The main objective, is to make your programming with Flutter + GetX more pleasant and intuitive than it already is! When there is a development pattern to be followed, everything is easier for those who use it.',
  'getx_because_that_way':
      'Because that way, we can communicate "universally" with people who also follow these same standards and package.',
  'getx_there_are_infinite_ways':
      'There are infinite ways to solve the same problem, so patterns have a very important role in that, the same problems, can still be solved in several ways, but with a certain flow to be followed, with this we managed to direct the programmer in a shorter and more concise path.',
  'getx_this_makes_it_much_easier':
      'This makes it much easier to resolve your doubts and share knowledge when using the same standard.',
  'getx_your_project_will_not_be_dependent':
      'Your project will not be dependent on who built it, as other programmers will be able to read and change the code without difficulty.',
  'getx_you_will_have_a_better_use':
      'You will have a better use in the reuse of your code, being able to reuse several widgets from other projects for example, that it will fit perfectly in your project.',
  'getx_that_you_can_apply_the_use':
      'That you can apply the use of GetX in professional projects, having documentation in hand, with that, more security for those who program, whether you are a company or a student in search of knowledge.',
  'structure_you_can_feel_free_to_use':
      'You can feel free to use the structure you want in modules or packages, over time we will be creating exenplos and creating them in both ways. \nThe initial example will offer you the same tabs so you can follow the construction of the project in both ways with the same code, so lets get started!',
  'structure_first_lets_take_a_look':
      'First let\'s take a look at our structures and choose the one that best suits or pleases you.',
  'structure_Now_that_you_know_the':
      'Now that you know the proposal and have given a good analysis in the presentation of the structure, let \'s take a moment to talk briefly about it, before introducing you to the GetX section, so you can follow our examples without difficulty or questions about our naming or flow standards, well, let \'s talk quickly one by one now, do not worry if you are adventuring and do not know some of the concepts that will be covered here, this is just a formal presentation with the structure, we’ll talk in more detail about each one, with examples in their respective sections.',
  'structure_It_is_the_directory_that_will':
      'It is the directory that will group all of our model classes for our objects.',
  'structure_It_is_the_directory_responsible_for':
      'It is the directory responsible for grouping our data providers, it can be either a database or an api.',
  'structure_It_is_a_single_point_of_access':
      'It is a single point of access to data, it will abstract our entities.',
  'structure_It_is_the_directory_that_will_group_all':
      'It is the directory that will group all of our model classes for our objects.',
  'structure_Our_controllers_are_nothing_more_than':
      'Our controllers are nothing more than those responsible for our business rules, state changes, it is also where we will create our observables with their respective initial states and the events that will be responsible for changing those states.',
  'structure_It_is_the_directory_responsible_for_containing_our_files_which':
      'It is the directory responsible for containing our files which are responsible for managing our routes.',
  'structure_translation_info':
      'Here, if you need to, you can create files that contain translations and use them with GetX internationalization',
  'structure_bindings_info':
      'These are dependencies that we will use in our application, loaded with  \'Lazy \' , guarantee that our controllers are on our pages without you even having to declare them',
  'structure_Now_that_you_know_a_little_more_about_our_structure':
      'Now that you know a little more about our structure, let\'s go over one by one with their respective details from now on!',
  'getx_The_focus_of_GetX_is_to_have_greater':
      'The focus of GetX is to have greater performance with minimum consumption of resources, at the same time, increasing the productivity, using an easy and pleasant syntax. \nSee the benchmarks',
  'getx_Organization_allowing_the_complete_decoupling_of':
      'Organization, allowing the complete decoupling of your presentation layer from your business rule.',
  'getx_Getx_has_the_power_to_reconstruct_only':
      'Getx has the power to reconstruct only the widget when there is a state change in a .obs variable in its controller. That\'s because everything in it is flow, this allows us to hear the event for each \'variable\'.\n',
  'getx_Lets_go_to_a_first_example_of_the_application':
      'Let\'s go to a first example of the application of GetX with getx_pattern, from the good old counter.\n',
  'getx_We_will_use_in_this_example_only_the_main_file':
      'We will use, in this example, only the main file, so that you are familiar with GetX concepts. Delete all content from your main.dart and keep, or copy and paste, just this snippet of code:',
  'getx_After_that_we_will_create_our_controller_class':
      'After that, we will create our controller class, which allows us to create our business rule and control our states. Below the code above paste the following code:',
  'getx_GetxController_is_responsible_for_providing_us_with':
      'GetxController is responsible for providing us with the necessary methods to control our observables (.obs), allowing us to update our GetX widgets, responding to changes in the states of our application. In the example above we declare a variable and two methods, let\'s talk about them.',
  'getx_With_GetX_we_can_extend_the_GetxController_class':
      'With GetX, we can extend the GetxController class, and with it we can create observable variables by adding a simple .obs and its initial state. \nfinal [var] = [initial-value] .obs; \n\nOur observable can only be final, and its type will be assigned from the initial-value inserted at the moment of the declaration, since it is final, it can only be inserted once.',
  'getx_But_and_now_If_final_can_only':
      'But and now? If final can only be modified once, how will I change the value of this variable? The answer is as simple as it is short, .value',
  'getx_When_creating_your_variable_as_an_observable':
      'When creating your variable as an observable, it will create, behind the hood, an RxObject, for example, an int -> Rxint type, a List <User> () -> RxList <User> () type, and its value and original type is stored in its value attribute of that RxObject.',
  'getx_In_the_case_of_our_Lists_it_is_not':
      'In the case of our Lists, it is not necessary to use the .value, so unlike an RxString where you would access the value contained with text.value, with the lists you can work normally, considering that both your list and the objects inside of it, they are all observable, so we can access their attributes this way myList.length or myList [index] .name.',
  'getx_We_go_to_the_Stateless_class_responsible':
      'We go to the Stateless class, responsible for visualizing our accountant. You are not wrong, with GetX you can never use a stateful again when changing your states, Cancel the setState, our widget GetX is reconstructed whenever an object, contained in it, has the state changed by the controller configured in the widget.let\'s go to the code.',
  'getx_Well_this_is_a_basic_widget_we':
      'Well, this is a basic widget, we are just showing a text and two buttons responsible for triggering our decrement () and increment () events, remember? are in our controller.',
  'objective': 'Objective',
  'but_why': 'But why?',
};
