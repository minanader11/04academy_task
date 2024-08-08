import 'package:dartz/dartz.dart';
import 'package:madrasa_task/data/models/request/FormRequest.dart';
import 'package:madrasa_task/domain/entities/FromResponse.dart';
import 'package:madrasa_task/domain/entities/MaterialResponse.dart';
import 'package:madrasa_task/domain/entities/SubscriptionResponse.dart';
import 'package:madrasa_task/domain/entities/failure.dart';

abstract class AuthenticationDataSource{
  Future<Either<Failures,FormResponseEntity>>postForm(FormRequest formRequest);
  Future<Either<Failures, List<MaterialResponseEntity>>>getSubjects();
  Future<Either<Failures,List<SubscriptionResponseEntity>>>getSubscription();
}