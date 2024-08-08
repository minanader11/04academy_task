import 'package:dartz/dartz.dart';
import 'package:madrasa_task/domain/entities/MaterialResponse.dart';
import 'package:madrasa_task/domain/entities/failure.dart';
import 'package:madrasa_task/domain/repo/authentication/Authentication_repo.dart';

class GetSubjectsUseCase{
  AuthenticationRepo authenticationRepo;
  GetSubjectsUseCase({required this.authenticationRepo});
  Future<Either<Failures, List<MaterialResponseEntity>>>invoke(){
    return authenticationRepo.getSubjects();
  }
}