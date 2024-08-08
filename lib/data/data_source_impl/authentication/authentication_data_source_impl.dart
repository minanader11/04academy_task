import 'package:dartz/dartz.dart';
import 'package:madrasa_task/data/api/api_service.dart';
import 'package:madrasa_task/data/models/request/FormRequest.dart';
import 'package:madrasa_task/domain/data_source/authentication/authentication_data_source.dart';
import 'package:madrasa_task/domain/entities/FromResponse.dart';
import 'package:madrasa_task/domain/entities/MaterialResponse.dart';
import 'package:madrasa_task/domain/entities/SubscriptionResponse.dart';
import 'package:madrasa_task/domain/entities/failure.dart';

class AuthenticationDataSourceImpl implements AuthenticationDataSource{
  ApiService apiService;
  AuthenticationDataSourceImpl({required this.apiService});

  @override
  Future<Either<Failures, FormResponseEntity>> postForm(FormRequest formRequest) async{
    var response= await apiService.postForm(formRequest);
    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(r);
    },);
  }

  @override
  Future<Either<Failures, List<MaterialResponseEntity>>> getSubjects() async{
    var response= await apiService.getSubjects();
    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(r);
    },);
  }

  @override
  Future<Either<Failures, List<SubscriptionResponseEntity>>> getSubscription() async {
    var response= await apiService.getSubscription();
    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(r);
    },);
  }

}