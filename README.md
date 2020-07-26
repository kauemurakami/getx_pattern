# getx_pattern
[![Star on GitHub](https://img.shields.io/github/stars/kauemurakami/getx_pattern.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/kauemurakami/getx_pattern)  
## Uma proposta para padronizar seu desenvolvimento com GetX.  

>**Objetivos**  
> - Facilitar o aprendizado do package.  
> - Ter uma estrutura sólida, padrão para o desenvolvimento de aplicações com GetX.  
> - Facilitar o uso do GetX de forma organizada, simples e escalável.  
> - Facilitar na busca de informações e disseminação do conhecimento.  
> - Working in the English version and new site multi-language.  
  
#### [Documentação em português no GitHub Pages](https://kauemurakami.github.io/getx_pattern/)  
#### Experimente também nossa extensão para vscode [GetX Snippets](https://marketplace.visualstudio.com/items?itemName=get-snippets.get-snippets) pensanda 100% sobre o **getx_pattern**, ela irá agilizar muito seu processo de desenvolvimento com [GetX](https://pub.dev/packages/get).

### Structure in modules
```yaml
- /app  
# This is where all the application's directories will be contained  
    - /modules
    # Each module consists of a page and its respective GetXController.  
    # We treat each screen as an independent module, as it has its only controller.  
    # If you use reusable widgets in this, and only in this module, you can choose to add a folder for them.  
        - /my_module
            - my_page.dart
            - my_controller.dart
            - /local_widgets
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
        # Class Page {
        # This file will contain your array routing ex :  
        # class AppPages { static final pages = [  GetPage(name: Routes.HOME, page:()=> HomePage()) ];  
    - /bindings
        - home_binding.dart
    # The Binding class is a class that disables dependency injection, while "binding" routes to the state manager and the dependency manager. 
    # This lets you know which screen is being displayed when a specific controller is used and knows where and how to dispose of it. 
    # In addition, the Binding class allows you to have SmartManager configuration control. You can configure how dependencies to be organized and remove a route from the stack, or when the widget that is used for disposition, or none of them.  
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

