import 'package:dartz/dartz.dart';
import 'package:madrasa_task/data/models/request/FormRequest.dart';
import 'package:madrasa_task/domain/data_source/authentication/authentication_data_source.dart';
import 'package:madrasa_task/domain/entities/FromResponse.dart';
import 'package:madrasa_task/domain/entities/MaterialResponse.dart';
import 'package:madrasa_task/domain/entities/failure.dart';
import 'package:madrasa_task/domain/repo/authentication/Authentication_repo.dart';

class AuthenticationRepoImpl implements AuthenticationRepo{
  AuthenticationDataSource authenticationDataSource;
  AuthenticationRepoImpl({required this.authenticationDataSource});

  @override
  Future<Either<Failures, FormResponseEntity>> postForm(FormRequest formRequest) {
   return authenticationDataSource.postForm(formRequest);
  }

  @override
  Future<Either<Failures, List<MaterialResponseEntity>>> getSubjects() {
    return authenticationDataSource.getSubjects();
  }

}