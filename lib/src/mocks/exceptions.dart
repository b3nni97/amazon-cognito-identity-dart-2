import 'package:dio/dio.dart';

final codeDeliveryFailureException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['CodeDeliveryFailureException'],
  }),
  requestOptions: RequestOptions(),
);

final internalErrorException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 500,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['InternalErrorException'],
  }),
  requestOptions: RequestOptions(),
);

final invalidEmailRoleAccessPolicyException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['InvalidEmailRoleAccessPolicyException'],
  }),
  requestOptions: RequestOptions(),
);

final invalidLambdaResponseException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['InvalidLambdaResponseException'],
  }),
  requestOptions: RequestOptions(),
);

final invalidParameterException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['InvalidParameterException'],
  }),
  requestOptions: RequestOptions(),
);

final invalidPasswordException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['InvalidPasswordException'],
  }),
  requestOptions: RequestOptions(),
);

final invalidSmsRoleAccessPolicyException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['InvalidSmsRoleAccessPolicyException'],
  }),
  requestOptions: RequestOptions(),
);

final invalidSmsRoleTrustRelationshipException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['InvalidSmsRoleTrustRelationshipException'],
  }),
  requestOptions: RequestOptions(),
);

final notAuthorizedException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['NotAuthorizedException'],
  }),
  requestOptions: RequestOptions(),
);

final resourceNotFoundException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['ResourceNotFoundException'],
  }),
  requestOptions: RequestOptions(),
);

final tooManyRequestsException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['TooManyRequestsException'],
  }),
  requestOptions: RequestOptions(),
);

final unexpectedLambdaException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['UnexpectedLambdaException'],
  }),
  requestOptions: RequestOptions(),
);

final userLambdaValidationException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['UserLambdaValidationException'],
  }),
  requestOptions: RequestOptions(),
);

final usernameExistsException = Response(
  data: '{"message":"Mocked error message"}',
  statusCode: 400,
  headers: Headers.fromMap({
    'x-amzn-ErrorType': ['UsernameExistsException'],
  }),
  requestOptions: RequestOptions(),
);
