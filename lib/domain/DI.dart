import 'package:madrasa_task/data/api/api_service.dart';
import 'package:madrasa_task/data/data_source_impl/authentication/authentication_data_source_impl.dart';
import 'package:madrasa_task/data/repo_impl/authentication/authentication_repo_impl.dart';
import 'package:madrasa_task/domain/data_source/authentication/authentication_data_source.dart';
import 'package:madrasa_task/domain/repo/authentication/Authentication_repo.dart';
import 'package:madrasa_task/domain/use_cases/getSubjectsUseCase.dart';

GetSubjectsUseCase injectGeSubjectsUseCase(){
  return GetSubjectsUseCase(authenticationRepo: injectAuthenticationRepo());
}
AuthenticationRepo injectAuthenticationRepo(){
  return AuthenticationRepoImpl(authenticationDataSource: injectAuthenticationDataSource());
}
AuthenticationDataSource injectAuthenticationDataSource(){
  return AuthenticationDataSourceImpl(apiService: injectApiService());
}
ApiService injectApiService(){
  return ApiService();
}