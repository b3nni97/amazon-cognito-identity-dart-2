import 'package:dio/dio.dart';

export './exceptions.dart'
    show
        codeDeliveryFailureException,
        internalErrorException,
        invalidEmailRoleAccessPolicyException,
        invalidLambdaResponseException,
        invalidPasswordException,
        invalidSmsRoleAccessPolicyException,
        invalidSmsRoleTrustRelationshipException,
        notAuthorizedException,
        resourceNotFoundException,
        tooManyRequestsException,
        unexpectedLambdaException,
        userLambdaValidationException,
        usernameExistsException;

/// A response from the server indicating that a user registration
/// has been confirmed.
final successfulConfirmedSignUp = Response(
  data: '''{
    "CodeDeliveryDetails": {
      "AttributeName": "string",
      "DeliveryMedium": "SMS",
      "Destination": "string"
    },
    "UserConfirmed": true,
    "UserSub": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
  }''',
  statusCode: 200,
  headers: Headers.fromMap({
    'Content-Type': ['application/json'],
  }),
  requestOptions: RequestOptions(),
);

/// A response from the server indicating that a user registration
/// has not been confirmed.
final successfulUnconfirmedSignUp = Response(
  data: '''{
    "CodeDeliveryDetails": {
      "AttributeName": "string",
      "DeliveryMedium": "SMS",
      "Destination": "string"
    },
    "UserConfirmed": false,
    "UserSub": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
  }''',
  statusCode: 200,
  headers: Headers.fromMap({
    'Content-Type': ['application/json'],
  }),
  requestOptions: RequestOptions(),
);
