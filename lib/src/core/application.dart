import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../features/display/logic/movie_cubit.dart';
import '../features/display/repository/movie_repository.dart';
import '../shared/locator.dart';
import 'routing/app_router.dart';
import 'theme/app_theme.dart';

class Application extends StatelessWidget {
  final AppRouter _appRouter;
  //final AuthRepository _authrepository
  
  Application({
    super.key,
    AppRouter? appRouter,
  }) : _appRouter = appRouter ?? locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return  MultiRepositoryProvider(
      providers: [
        RepositoryProvider<MovieRepository>(
          create: (context) => MovieRepository(),
        ),
        
        
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MovieCubit>(
            create: (context) => MovieCubit(context.read<MovieRepository>()),
          ),
         
        ],
      child: MaterialApp.router(
        title: 'InstaCampus',
        routerConfig: _appRouter.config(
          navigatorObservers: () => [
            AutoRouteObserver(),
          ],
        ),
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        // localizationsDelegates: const [
        //     I18n.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // supportedLocales: I18n.delegate.supportedLocales,
        
      ),
    )
    );
  }
}
