import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:egytologia/core/networking/remote/network_mappers.dart';
import 'package:egytologia/shared/local/chach_helper.dart';

class NetworkUtil {
  static NetworkUtil _instance = new NetworkUtil.internal();

  NetworkUtil.internal();

  factory NetworkUtil() => _instance;

  Dio dio = Dio();
  String base_url = "https://tourists-services.herokuapp.com/api/";


  Future<ResponseType> get<ResponseType extends Mappable>(
      ResponseType responseType, String url,
      {bool headers = false,var body}) async {
    var response;
    try {
   //   print("${await preferenceManager.readString(CachingKey.AUTH_TOKEN)}");
      dio.options.baseUrl = base_url;
      if(headers){
        dio.options.headers = {
      //    "lang":AppLocalization.localeNow.toString(),
          "Accept": "application/json",
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${await CacheHelper.getData(key: "token")}',
        };

      //  print('Bearer ${await preferenceManager.readString(CachingKey.AUTH_TOKEN)}');
      }
      response = await dio.get(url,queryParameters: body);
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    return handleResponse(response, responseType);
  }

  Future<ResponseType> post<ResponseType extends Mappable>(
      ResponseType responseType, String url,
      {bool headers = false, var body, encoding}) async {
    var response;
    dio.options.baseUrl = base_url;
    try {
      if(headers){
        dio.options.headers = {
     //     "lang":AppLocalization.localeNow.toString(),
          "Accept": "application/json",
          "Content-Type": "application/json",
      //    'Authorization': 'Bearer ${await preferenceManager.readString(CachingKey.AUTH_TOKEN)}',
        };
      }
      response = await dio.post(url,
          data: body,
          options: Options(requestEncoder: encoding));
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    return handleResponse(response, responseType);
  }

  Future<ResponseType> delete<ResponseType extends Mappable>(
      ResponseType responseType, String url,
      {bool headers = false, var body, encoding}) async {
    var response;
    dio.options.baseUrl = base_url;
    try {
      if(headers){
        dio.options.headers = {
      //    "lang":AppLocalization.localeNow.toString(),
          "Accept": "application/json",
          "Content-Type": "application/json",
       //   'Authorization': 'Bearer ${await preferenceManager.readString(CachingKey.AUTH_TOKEN)}',
        };
      }
      response = await dio.delete(url,
          data: body,
          options: Options(requestEncoder: encoding));
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    return handleResponse(response, responseType);
  }

  ResponseType handleResponse<ResponseType extends Mappable>(
      Response response, ResponseType responseType) {
    final int statusCode = response.statusCode;
    if (statusCode >= 200 && statusCode < 300) {
      print("correrct request: " + response.toString());
      if(responseType is ListMappable){
        return Mappable(responseType, response.data) as ResponseType;

      }
      else{
        return Mappable(responseType, response) as ResponseType;

      }
    } else {
      print("request error: " + response.toString());
      return Mappable(responseType, response) as ResponseType;
    }
  }
  //
  // Future<ResponseType> request<ResponseType extends Mappable> (
  //     ResponseType responseType, String url,
  //     {bool headers = false, var body, encoding , String method}
  //
  //     ) async {
  //   var response;
  //   dio.options.baseUrl=base_url;
  //   dio.options.method=method;
  //   try {
  //     if(headers){
  //       dio.options.headers = {
  //         //    "lang":AppLocalization.localeNow.toString(),
  //         "Accept": "application/json",
  //         "Content-Type": "application/json",
  //         //   'Authorization': 'Bearer ${await preferenceManager.readString(CachingKey.AUTH_TOKEN)}',
  //       };
  //     }
  //     response = await dio.request(url,
  //         data: body,
  //         options: Options(requestEncoder: encoding));
  //   } on DioError catch (e) {
  //     if (e.response != null) {
  //       response = e.response;
  //     }
  //   }
  //   return handleResponse(response,responseType );





}
