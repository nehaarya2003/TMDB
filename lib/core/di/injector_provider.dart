import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sample/data/remote/movie_service.dart';
import 'package:sample/data/repository/movie/movie_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/remote/auth/auth_service.dart';
import '../../data/repository/auth/auth_repository.dart';
import '../init/network/network_manager.dart';
import '../init/network/vexana_manager.dart';

final inject = GetIt.instance;

@injectableInit
void configureDependencies() {
  //Components
  inject.registerSingleton(NetworkManager());
  inject.registerSingleton(VexanaManager.instance.networkManager);
  inject.registerSingleton(SharedPreferences.getInstance());

  //Remote Services
  inject.registerFactory(() => AuthService());
  inject.registerFactory(() => MovieService());

  //Repositories
  inject.registerFactory(() => AuthRepository());
  inject.registerFactory(() => MovieRepository());

  //ViewModels
  //inject.registerLazySingleton(() => LoginViewModel());
}
