
import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../entity/authenticated_user.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, AuthenticatedUserEntity>> getUser();

  Future<Either<Failure, AuthenticatedUserEntity>> login(String email, String password);

  Future<Either<Failure, void>> logout();
}