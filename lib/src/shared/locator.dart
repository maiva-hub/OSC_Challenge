
import 'package:get_it/get_it.dart';

import '../core/routing/app_router.dart';

final GetIt locator = GetIt.instance..registerLazySingleton(() => AppRouter());