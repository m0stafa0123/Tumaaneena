abstract class Failure {
  const Failure(this.errmessage);

  final String errmessage;
}

class ServerFailure extends Failure {
  const ServerFailure(super.errmessage);

  factory ServerFailure.fromDioError([Object? error]) {
    return const ServerFailure('Something went wrong');
  }

  factory ServerFailure.fromResponse([String? message]) {
    return ServerFailure(message ?? 'Something went wrong');
  }
}