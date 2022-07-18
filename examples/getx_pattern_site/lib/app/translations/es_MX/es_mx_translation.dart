// part './strings_es_mx.dart';

part './strings_es_mx.dart';

final Map<String, String> esMx = {
  'Home': HOME,
  'Structure': STRUCTURE,
  'GetX': 'GetX',
  'Data': DATA,
  'Provider': PROVIDER,
  'Model': MODEL,
  'Repository': REPOSITORIO,
  'Controller': CONTROLLER,
  'Bindings': BINDINGS,
  'UI': UI,
  'Routes': ROTAS,
  'Translations': TRANSLATIONS,
  'Tutorials': TUTORIAIS,
  'oi': OI,
  'GetX_Pattern': 'GetX Patrón',
  'Project_using_GetX_Library': 'Proyecto utilizando la biblioteca GetX !!!',
  'getx_pattern': 'getx_patrona',
  'getx_a_proposal_for_you':
      'Una propuesta para ti que utiliza GetX como tu gestor de estado!',
  'getx_the_main_objective':
      '¡El objetivo principal es hacer que tu programación con Flutter + GetX sea más agradable e intuitiva de lo que ya es! Cuando hay un patrón de desarrollo a seguir, todo es más fácil para quien lo utiliza.',
  'getx_because_that_way':
      'Porque de esa manera, podemos comunicarnos "universalmente" con personas que también siguen estos mismos estándares y paquetes.',
  'getx_there_are_infinite_ways':
      'Hay infinitas formas de resolver un mismo problema, por lo que los patrones tienen un papel muy importante en que, los mismos problemas, aún se pueden resolver de varias formas, pero con cierto flujo a seguir, con esto logramos dirigir al programador en un camino más corto y más conciso.',
  'getx_this_makes_it_much_easier':
      'Esto hace que sea mucho más fácil resolver tus dudas y compartir conocimientos cuando se utiliza el mismo estándar.',
  'getx_your_project_will_not_be_dependent':
      'Su proyecto no dependerá de quién lo haya construido, ya que otros programadores podrán leer y cambiar el código sin dificultad.',
  'getx_you_will_have_a_better_use':
      'Tendrás un mejor aprovechamiento en la reutilización de tu código, pudiendo reutilizar varios widgets de otros proyectos por ejemplo, que encajará perfectamente en tu proyecto.',
  'getx_that_you_can_apply_the_use':
      'Que puedas aplicar el uso de GetX en proyectos profesionales, teniendo la documentación a la mano, con eso, más seguridad para quien programa, ya seas una empresa o un estudiante en busca de conocimiento.',
  'structure_you_can_feel_free_to_use':
      'Puede sentirse libre de usar la estructura que desee en módulos o paquetes, con el tiempo iremos creando ejemplos y creándolos de ambas formas. \nEl ejemplo inicial le ofrecerá las mismas pestañas para que pueda seguir la construcción del proyecto en ambos sentidos con el mismo código, ¡así que comencemos!',
  'structure_first_lets_take_a_look':
      'Primero, echemos un vistazo a nuestras estructuras y elijamos la que mejor se adapte o le agrade.',
  'structure_Now_that_you_know_the':
      'Ahora que conoce la propuesta y ha dado un buen análisis en la presentación de la estructura, tomemos un momento para hablar brevemente sobre ella, antes de presentarle la sección GetX, para que pueda seguir nuestros ejemplos sin dificultad ni preguntas. sobre nuestros estándares de nomenclatura o flujo, bueno, hablemos rápidamente uno por uno ahora, no se preocupe si está aventurándose y no conoce algunos de los conceptos que se tratarán aquí, esto es solo una presentación formal con la estructura , hablaremos con más detalle de cada uno, con ejemplos en sus respectivos apartados.',
  'structure_It_is_the_directory_that_will':
      'Es el directorio que agrupará todas nuestras clases modelo para nuestros objetos.',
  'structure_It_is_the_directory_responsible_for':
      'Es el directorio encargado de agrupar a nuestros proveedores de datos, puede ser una base de datos o una api.',
  'structure_It_is_a_single_point_of_access':
      'Es un único punto de acceso a los datos, abstraerá nuestras entidades.',
  'structure_It_is_the_directory_that_will_group_all':
      'Es el directorio que agrupará todas nuestras clases modelo para nuestros objetos.',
  'structure_Our_controllers_are_nothing_more_than':
      'Nuestros controladores no son más que los responsables de nuestras reglas de negocio, cambios de estado, también es donde crearemos nuestros observables con sus respectivos estados iniciales y los eventos que se encargarán de cambiar esos estados.',
  'structure_It_is_the_directory_responsible_for_containing_our_files_which':
      'Es el directorio encargado de contener nuestros archivos los cuales se encargan de gestionar nuestras rutas.',
  'structure_translation_info':
      'Aquí, si lo necesita, puede crear archivos que contengan traducciones y usarlos con la internacionalización de GetX',
  'structure_bindings_info':
      'Estas son dependencias que usaremos en nuestra aplicación, cargadas con \'Lazy \', garantizan que nuestros controladores estén en nuestras páginas sin que tengas que declararlos',
  'structure_Now_that_you_know_a_little_more_about_our_structure':
      'Ahora que ya sabes un poco más sobre nuestra estructura, ¡vamos a repasar uno a uno con sus respectivos detalles a partir de ahora!',
  'getx_The_focus_of_GetX_is_to_have_greater':
      'El enfoque de GetX es tener un mayor rendimiento con el mínimo consumo de recursos, al mismo tiempo que aumenta la productividad, utilizando una sintaxis fácil y agradable. \nVer los puntos de referencia',
  'getx_Organization_allowing_the_complete_decoupling_of':
      'Organización, lo que permite el desacoplamiento completo de su capa de presentación de su regla comercial.',
  'getx_Getx_has_the_power_to_reconstruct_only':
      'Getx tiene el poder de reconstruir solo el widget cuando hay un cambio de estado en una variable .obs en su controlador. Esto se debe a que todo fluye, esto nos permite escuchar el evento de cada \'variable\'.\n',
  'getx_Lets_go_to_a_first_example_of_the_application':
      'Vayamos a un primer ejemplo de la aplicación de GetX con getx_pattern, del buen viejo contador.\n',
  'getx_We_will_use_in_this_example_only_the_main_file':
      'Usaremos, en este ejemplo, solo el archivo principal, para que esté familiarizado con los conceptos de GetX. Elimine todo el contenido de su main.dart y conserve, o copie y pegue, solo este fragmento de código:',
  'getx_After_that_we_will_create_our_controller_class':
      'Después de eso, crearemos nuestra clase de controlador, que nos permite crear nuestra regla comercial y controlar nuestros estados. Debajo del código anterior, pegue el siguiente código:',
  'getx_GetxController_is_responsible_for_providing_us_with':
      'GetxController se encarga de brindarnos los métodos necesarios para controlar nuestros observables (.obs), permitiéndonos actualizar nuestros widgets GetX, respondiendo a cambios en los estados de nuestra aplicación. En el ejemplo anterior declaramos una variable y dos métodos, hablemos de ellos.',
  'getx_With_GetX_we_can_extend_the_GetxController_class':
      'Con GetX, podemos extender la clase GetxController y con ella podemos crear variables observables agregando un simple .obs y su estado inicial. \nfinal [var] = [valor-inicial] .obs; \n\nNuestro observable solo puede ser final, y su tipo se asignará a partir del valor inicial insertado en el momento de la declaración, ya que es final, solo se puede insertar una vez.',
  'getx_But_and_now_If_final_can_only':
      'Pero y ahora? Si final solo se puede modificar una vez, ¿cómo cambiaré el valor de esta variable? La respuesta es tan simple como corta, .value',
  'getx_When_creating_your_variable_as_an_observable':
      'Al crear su variable como un observable, creará, detrás del capó, un RxObject, por ejemplo, un tipo int -> Rxint, un tipo List <User> () -> RxList <User> (), y su valor y el tipo original se almacena en su atributo de valor de ese RxObject.',
  'getx_In_the_case_of_our_Lists_it_is_not':
      'En el caso de nuestras Listas, no es necesario usar el .value, por lo que a diferencia de un RxString donde accederías al valor contenido con text.value, con las listas puedes trabajar normalmente, considerando que tanto tu lista como los objetos dentro de él, todos son observables, por lo que podemos acceder a sus atributos de esta manera myList.length o myList [index] .name.',
  'getx_We_go_to_the_Stateless_class_responsible':
      'Pasamos a la clase Stateless, encargado de visualizar a nuestro contador. No te equivocas, con GetX nunca puedes volver a usar un stateful al cambiar tus estados, cancela el setState, nuestro widget GetX se reconstruye cada vez que un objeto, contenido en él, tiene el estado cambiado por el controlador configurado en el widget.let \ Vamos al código.',
  'getx_Well_this_is_a_basic_widget_we':
      'Bueno, este es un widget básico, solo mostramos un texto y dos botones responsables de activar nuestros eventos de decremento () e incremento (), ¿recuerdas? están en nuestro controlador.',
  'objective': 'Objetiva',
  'but_why': 'Pero por qué?',
};
