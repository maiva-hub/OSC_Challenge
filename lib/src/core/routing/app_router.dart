import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/display/model/movie_model.dart';
import '../../features/display/ui/pages/movie_details._screen.dart';
import '../../features/display/ui/pages/movie_screen.dart';


part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> routes = [
    //Systeme de routage de mes pages ave le plugin autoRoute de flutter.
    //il permet de simplifier la gestion des routes et des transitions entre les ecrans, 
    //et se fait de facon automatique reduisant ainsi loe risque d'erreurs.
    //le parametre intitial c'est pour preciser si c'est la premiere page des le lancement de l'application

    AutoRoute(page: MovieRoute.page, initial: true),
    AutoRoute(page: MovieDetailRoute.page, initial: false),

   


  ];
}
