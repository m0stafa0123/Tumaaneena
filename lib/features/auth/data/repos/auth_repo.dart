import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserModel>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserModel>> signUp({
    required String fullName,
    required String email,
    required String password,
  });

  Future<Either<Failure, bool>> forgotPassword({
    required String email,
  });
}