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
        - /provider
        # Our data provider, can be an api, local database or firebase for example.
            - my_api_provider.dart
        # Here, our asynchronous data request, http, local database functions must remain ...
        - /model
        # Our classes, or data models responsible for abstracting our objects.
            - my_model.dart
        - /repository
        # Here our repositories are just classes that will mediate the communication between our controller and our data.
        # Our controllers won't need to know where the data comes from, and you can use more than one repository on a controller if you need to.
        # The repositories must be separated by entities, and can almost always be based on their database tables.
        # And inside it will contain all its functions that will request data from a local api or database.
        # That is, if we have a user table that we will persist as, edit, add, update and delete, all these functions are requested from an api, we will have a repository with this object of the api where we will call all the respective functions to the user. So the controller does not need to know where it comes from, the repository being a mandatory attribute for the controllers in this model, you should always initialize the controller with at least one repository, see the example repos.
            my_repository.dart
    - /modules
    # Each module consists of a page, its respective GetXController and its dependencies or Bindings.
    # We treat each screen as an independent module, as it has its only controller, and can also contain its dependencies.
    # If you use reusable widgets in this, and only in this module, you can choose to add a folder for them.
        - /my_module
            - my_page.dart
            - my_controller.dart
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

- main.dart  
# main file
# proposed by william Silva 
# We also have a version in packages to vocvê that is used to the good old MVC

examples available in this repository: getx_pattern_site and getx_example
```

![](images/rocket.png)

