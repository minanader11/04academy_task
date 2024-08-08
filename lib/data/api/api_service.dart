import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:madrasa_task/data/api/api_constants.dart';
import 'package:madrasa_task/data/models/request/FormRequest.dart';
import 'package:madrasa_task/data/models/response/FormResponseDto.dart';
import 'package:madrasa_task/data/models/response/MaterialResponseDto.dart';
import 'package:madrasa_task/domain/entities/FromResponse.dart';
import 'package:madrasa_task/domain/entities/failure.dart';
class ApiService{
  Future<Either<Failures,FormResponseDto>>postForm(FormRequest formRequest) async{
    var connectivityResult = await Connectivity().checkConnectivity(); // User defined class
    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi)){
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.formApi);
      var formRequestDto= formRequest;
      var response =await http.post(url,body: formRequestDto.toJson());

      var formResponse= FormResponseDto.fromJson(jsonDecode(response.body));
      if(response.statusCode>=200 && response.statusCode <300 ){

       return Right(formResponse);
      }else{
       return Left(ServerFailure(errMsg:"Error Posting From" ));
      }
    } else{
     return Left(NetworkFailure(errMsg: 'Network Error'));
    }
  }
  Future<Either<Failures,List<MaterialResponseDto>>>getSubjects() async{
    var connectivityResult = await Connectivity().checkConnectivity(); // User defined class
    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi)){
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.materialApi);
    //  var formRequestDto= formRequest;
      var response =await http.get(url);
      print(response.body);
      print(response.statusCode);
      List<MaterialResponseDto> subjects=[];
      print('${response.body.length} length');
      print('${response.body} object');
      var jsonResponse=jsonDecode(response.body);
      print(jsonResponse);
      for(int i =0 ;i<jsonResponse.length;i++){
        subjects.add(MaterialResponseDto.fromJson(jsonResponse[i]));
        print(subjects[i]);
      }
    //  var materialsResponse= MaterialResponseDto.fromJson(jsonDecode(response.body));
      if(response.statusCode>=200 && response.statusCode <300 ){

        return Right(subjects);
      }else{
        return Left(ServerFailure(errMsg:"Error Fetching Materials" ));
      }
    } else{
      return Left(NetworkFailure(errMsg: 'Network Error'));
    }
  }

}