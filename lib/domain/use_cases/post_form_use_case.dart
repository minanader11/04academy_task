import 'package:dartz/dartz.dart';
import 'package:madrasa_task/data/models/request/FormRequest.dart';
import 'package:madrasa_task/domain/entities/FromResponse.dart';
import 'package:madrasa_task/domain/entities/failure.dart';
import 'package:madrasa_task/domain/repo/authentication/Authentication_repo.dart';

class PostFormUseCase{
  AuthenticationRepo authenticationRepo;
  PostFormUseCase({required this.authenticationRepo});
  Future<Either<Failures,FormResponseEntity>>invoke(FormRequest formRequest){
    return authenticationRepo.postForm(formRequest);
  }
}