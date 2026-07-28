import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/user_model.dart';
import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl();

  @override
  Future<Either<Failure, UserModel>> login({
    required String email,
    required String password,
  }) async {
    return Right(
      UserModel(
        id: 'demo-user',
        fullName: 'Demo User',
        email: email,
        token: 'placeholder-token',
        profileImage: null,
      ),
    );
  }

  @override
  Future<Either<Failure, UserModel>> signUp({
    required String fullName,
    required String email,
    required String password,
  }) async {
    return Right(
      UserModel(
        id: 'demo-user',
        fullName: fullName,
        email: email,
        token: 'placeholder-token',
        profileImage: null,
      ),
    );
  }

  @override
  Future<Either<Failure, bool>> forgotPassword({required String email}) async {
    return const Right(true);
  }
}