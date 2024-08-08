import 'package:dartz/dartz.dart';
import 'package:madrasa_task/domain/entities/SubscriptionResponse.dart';
import 'package:madrasa_task/domain/entities/failure.dart';
import 'package:madrasa_task/domain/repo/authentication/Authentication_repo.dart';

class GetSubscriptionsUseCase{
  AuthenticationRepo authenticationRepo;
  GetSubscriptionsUseCase({required this.authenticationRepo});
  Future<Either<Failures, List<SubscriptionResponseEntity>>>invoke(){
    return authenticationRepo.getSubscription();
  }
}