# getx_pattern
[![Star on GitHub](https://img.shields.io/github/stars/kauemurakami/getx_pattern.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/kauemurakami/getx_pattern) 
<a href="https://www.buymeacoffee.com/kauemurakami" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

## A proposal to standardize your development with GetX.  

>**Objective**  
> - Facilitate the learning of the package.  
> - Have a solid, standard structure for developing applications with GetX.  
> - Facilitate the use of GetX in an organized, simple and scalable way.  
> - Facilitate the search for information and dissemination of knowledge.  
> - Working in the English version and new site multi-language.  
  
#### [Documentation in Portuguese at GitHub Pages](https://kauemurakami.github.io/getx_pattern/)  
#### Also try our extension for vscode [GetX Snippets](https://marketplace.visualstudio.com/items?itemName=get-snippets.get-snippets) thinking 100% about **getx_pattern**, it will greatly speed up your development process with [GetX](https://pub.dev/packages/get).

### Structure in modules
```yaml
- /app  
# This is where all the application's directories will be contained  
    - /data
    # Directory responsible for containing everything related to our data
        - /service
            # This is where we store our Services
            - my_service.dart
        - /provider
        # Our data provider, can be an api, local database or firebase for example.
            - my_api_provider.dart
        # Here, our asynchronous data request, http, local database functions must remain ...
        - /model
        # Our classes, or data models responsible for abstracting our objects.
            - my_model.dart
        - /repository
            - my_repository.dart
        # Here our repositories are just classes that will mediate the communication between our controller and our data.
        # Our controllers won't need to know where the data comes from, and you can use more than one repository on a controller if you need to.
        # The repositories must be separated by entities, and can almost always be based on their database tables.
        # And inside it will contain all its functions that will request data from a local api or database.
        # That is, if we have a user table that we will persist as, edit, add, update and delete, all these functions are requested 
        # from an api, we will have a repository with this object of the api where we will call all the respective 
        # functions to the user. So the controller does not need to know where it comes from, the repository being a 
        # mandatory attribute for the controllers in this model, you should always initialize the controller with at 
        # least one repository, see the example repos.
    - /modules
    # Each module consists of a page, its respective GetXController and its dependencies or Bindings.
    # We treat each screen as an independent module, as it has its only controller, and can also contain its dependencies.
    # If you use reusable widgets in this, and only in this module, you can choose to add a folder for them.
        - /my_module
            - my_page.dart
            - my_controller.dart or my_service.dart, or both.
            - my_binding.dart
            - /local_widgets
    # The Binding class is a class that decouples dependency injection, while "binding" routes to the state manager and the dependency manager.
    # This lets you know which screen is being displayed when a specific controller is used and knows where and how to dispose of it.
    # In addition, the Binding class allows you to have SmartManager configuration control.
    # You can configure how dependencies are to be organized and remove a route from the stack, or when the widget used for disposition, or none of them.

    - /global_widgets 
    # Widgets that can be reused by multiple **modules**.  

    - /routes
    # In this repository we will deposit our routes and pages.  
    # We chose to separate into two files, and two classes, one being routes.dart, containing its constant routes and the other for routing.  
        - my_routes.dart
        # class Routes {
        # This file will contain your constants ex:  
        # class Routes { const HOME = '/ home'; }  
        - my_pages.dart
        # This file will contain your array routing ex :  
        # class AppPages { static final pages = [  
        #  GetPage(name: Routes.HOME, page:()=> HomePage()) 
        # ]};  

    - /theme
    #Here we can create themes for our widgets, texts and colors
        - text_theme.dart  
        # inside ex: final textTitle = TextStyle(fontSize: 30)  
        - color_theme.dart  
        # inside ex: final colorCard = Color(0xffEDEDEE)  
        - app_theme.dart  
        # inside ex: final textTheme = TextTheme(headline1: TextStyle(color: colorCard))  
     - /utils
    #Here you can insert utilities for your application, such as masks, form keys or widgets
        - keys.dart  
        # inside ex: static final GlobalKey formKey = GlobalKey<FormState>();
        - masks.dart  
        # inside ex: static final maskCPF = MaskTextInputFormatter(mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});  
        - helpers.dart  
    # Use classes to make your variables easier to use, eg Keys.myKey, Masks.maskCPF

- main.dart  
# main file
# proposed by william Silva and Kauê Murakami
# We also have a version in packages to vocvê that is used to the good old MVC

examples available in this repository: getx_pattern_site and getx_example
```

### Explaining
#### Data
Here we won't have much to discuss, it is just a repository where you will abstract / package EVERYTHING related to your data, your models, your repositories and data providers. If you choose to use the module version, Data will have the same role, leaving your data available for all your modules, leaving only what is vital for your module in it !!  
This was designed so that you can keep your directory structure as small as possible when working with flutter, and at the same time, be intuitive and didactic to speed up your learning curve.
#### Provider
obs: In some other structures, the term 'provider' can be approached in various ways, but here, it exists only and exclusively, to make http requests or persistence in a database. If you use both, create the respective directories and / or files within it.  
If there are many requests, in a single file, you can choose to separate by entities, or keep it in the same file, this is a personal choice and it is up to each programmer.
#### model 
In our model class we will have our attributes and two methods, toJson and fromJson responsible for converting our object to json or a json to our object.  
Generally when we work with API's, we use these methods to create objects from our api's response, or create a json to send to our api.
#### Repository 
It is responsible for separating its entities, basically, entities are all "tables" of your database that will interact with your provider.  
The repository aims to abstract and separate its data source from its controllers, thus having a single point of failure, that is, if you ever change your project's api or database, just change your providers files, with no need to change the repository, as it is only responsible for calling the provider function, there is no logic there.  
ex Imagine that you have a product selling app that only has customers and products from an establishment.  
We can easily identify our entities by asking us a question.  
Will I receive and / or send data from that entity? If the answer is yes, then it needs a repository.  
In our example we would have three repositories, UserRepository, ProductRepository, EstablishmentRepository.  
Sometimes, we can remove these entities based on our classes, but often there are auxiliary classes that are not necessarily in your database or api, so we prefer to base ourselves on what really interacts with your database.  
That way, we take out a lot of responsibility from our controller, it doesn't need to know where the data comes from, just consume it, another advantage is that the repository makes our Controller <-> Data connection. Thus, having a better organization, leaving the code comprehensive and easy to maintain, intuitively.
### Module
The modules will contain our respective Binding, Page, Controller.  
This makes the project shorter and easier to maintain.

#### Controller
Controllers are the vital part of your application, in which you will create your .obs variables which will store values ​​that can be changed during the application.  
Your controller is also responsible for consuming your data>, through its repositories, which in turn only perform data calls from your providers
Rule: Every controller must have one, and only one, repository, which is an attribute required to initialize your controller in your GetX widget.  
If you need data from two different repositories on the same page, you must use two GetX widgets. We recommend that there is at least one controller for each page.  
There is only one exception so that you can use the same controller for several pages, and it is quite simple:  

IMPORTANT  
You can use a controller on several pages, only and exclusively, if the data on all pages, consume a single repository.  

The purpose of this is to get you to use GetX and take full advantage of its power, so whenever you need to manipulate two entities, you will need two different controllers and a view.  
Why? Imagine that you have a controller with two repositories, and that controller is being used with a GetX widget on a page, using data retrieved by the controller from the two repositories.  
Whenever an entity is modified, the controller will update its widgets responsible for the two variables, one of which did not need to be changed. So separating a repository by controller, it can be a good practice when working with the GetX widget, having a responsible controller for each widget, which somehow shows this information from them, rendering only the widget that had its .obs variable changed. .
#### Bindings
Ideal for your dependency management, bindings can initialize your controllers and repositories, apis and whatever you need, without having to call them directly from View with GetView<YourController>!
#### Page
Your module interface using YourPage extends GetView<YourController>.

![](images/rocket.png)

