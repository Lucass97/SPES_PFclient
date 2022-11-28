//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:SPES_PFclient/services/api_util.dart';
import 'package:SPES_PFclient/services/model/doc_info.dart';
import 'package:SPES_PFclient/services/model/doc_partial_info.dart';
import 'package:SPES_PFclient/services/model/http_validation_error.dart';

class WalletApi {
  final Dio _dio;

  final Serializers _serializers;

  const WalletApi(this._dio, this._serializers);

  /// Restituisce il documento indetificativo della PF in base all&#39;ID.
  /// - Restituisce il documento indetificativo della PF in base all&#39;ID. Tale operazione può essere effettuata solamente dagli OPS e PF.
  ///
  /// Parameters:
  /// * [idPf] - ID univoco della persona fragile
  /// * [docId] - ID univoco del documento identificativo.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<Uint8List>>
      getIdentificationDocumentByIdWalletPfIdPfDocsDocIdGet({
    required String idPf,
    required String docId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/wallet/pf/{id_pf}/docs/{doc_id}'
        .replaceAll('{' r'id_pf' '}', idPf.toString())
        .replaceAll('{' r'doc_id' '}', docId.toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'HTTPBearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List _responseData;

    try {
      _responseData = _response.data as Uint8List;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Restituisce la lista dei documenti identificativi associati alla PF
  /// - Restituisce la lista dei documenti identificativi associati alla PF. Tale operazione può essere effettuata solamente dagli OPS e PF.
  ///
  /// Parameters:
  /// * [idPf] - ID univoco della persona fragile
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<DocInfo>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<DocInfo>>>
      getIdentificationDocumentsWalletPfIdPfDocsGet({
    required String idPf,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/wallet/pf/{id_pf}/docs'
        .replaceAll('{' r'id_pf' '}', idPf.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'HTTPBearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<DocInfo> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(DocInfo)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<DocInfo>;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<DocInfo>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Aggiorna il documento identificativo della persona fragile.
  /// - Effettua un aggiornamento del documento indentificativo della PF (chiamata soggetta a rimozione nel caso si volesse mantenere uno storico dei documenti identificativi per tipologia). Tale operazione può essere effettuata solamente dagli OPS.
  ///
  /// Parameters:
  /// * [idPf] - ID univoco della persona fragile
  /// * [docId] - ID univoco del documento identificativo.
  /// * [tipologia] - Tipologia di documento
  /// * [entity] - Ente di rilascio.
  /// * [number] - Numero del documento.
  /// * [placeOfIssue] - Luogo di rilascio.
  /// * [releaseDate] - Data di rilascio.
  /// * [expirationDate] - Data di scadenza.
  /// * [doc]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DocPartialInfo] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<DocPartialInfo>>
      updateIdentificationDocumentByIdWalletPfIdPfDocsDocIdPut({
    required String idPf,
    required String docId,
    String? tipologia,
    String? entity,
    String? number,
    String? placeOfIssue,
    String? releaseDate,
    String? expirationDate,
    MultipartFile? doc,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/wallet/pf/{id_pf}/docs/{doc_id}'
        .replaceAll('{' r'id_pf' '}', idPf.toString())
        .replaceAll('{' r'doc_id' '}', docId.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'HTTPBearer',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (tipologia != null)
          r'tipologia': encodeFormParameter(
              _serializers, tipologia, const FullType(String)),
        if (entity != null)
          r'entity':
              encodeFormParameter(_serializers, entity, const FullType(String)),
        if (number != null)
          r'number':
              encodeFormParameter(_serializers, number, const FullType(String)),
        if (placeOfIssue != null)
          r'place_of_issue': encodeFormParameter(
              _serializers, placeOfIssue, const FullType(String)),
        if (releaseDate != null)
          r'release_date': encodeFormParameter(
              _serializers, releaseDate, const FullType(String)),
        if (expirationDate != null)
          r'expiration_date': encodeFormParameter(
              _serializers, expirationDate, const FullType(String)),
        if (doc != null) r'doc': doc,
      });
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    DocPartialInfo _responseData;

    try {
      const _responseType = FullType(DocPartialInfo);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as DocPartialInfo;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<DocPartialInfo>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Upload dei documenti identificativi di una PF.
  /// - Effettua l&#39;upload di un documento identificativo della persona fragile. Tale operazione può essere effettuata solamente dagli OPS.
  ///
  /// Parameters:
  /// * [idPf] - ID univoco della persona fragile
  /// * [doc]
  /// * [tipologia] - Tipologia di documento.
  /// * [entity] - Ente di rilascio.
  /// * [number] - Numero del documento.
  /// * [placeOfIssue] - Luogo di rilascio.
  /// * [releaseDate] - Data di rilascio.
  /// * [expirationDate] - Data di scadenza.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DocPartialInfo] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<DocPartialInfo>>
      uploadIdentificationDocumentWalletPfIdPfDocsUploadPost({
    required String idPf,
    required MultipartFile doc,
    String? tipologia,
    String? entity,
    String? number,
    String? placeOfIssue,
    String? releaseDate,
    String? expirationDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/wallet/pf/{id_pf}/docs/upload'
        .replaceAll('{' r'id_pf' '}', idPf.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'HTTPBearer',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (tipologia != null)
          r'tipologia': encodeFormParameter(
              _serializers, tipologia, const FullType(String)),
        if (entity != null)
          r'entity':
              encodeFormParameter(_serializers, entity, const FullType(String)),
        if (number != null)
          r'number':
              encodeFormParameter(_serializers, number, const FullType(String)),
        if (placeOfIssue != null)
          r'place_of_issue': encodeFormParameter(
              _serializers, placeOfIssue, const FullType(String)),
        if (releaseDate != null)
          r'release_date': encodeFormParameter(
              _serializers, releaseDate, const FullType(String)),
        if (expirationDate != null)
          r'expiration_date': encodeFormParameter(
              _serializers, expirationDate, const FullType(String)),
        r'doc': doc,
      });
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    DocPartialInfo _responseData;

    try {
      const _responseType = FullType(DocPartialInfo);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as DocPartialInfo;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<DocPartialInfo>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
