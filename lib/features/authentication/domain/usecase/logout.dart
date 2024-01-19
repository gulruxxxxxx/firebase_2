
import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/authentication.dart';

class LogoutUseCase implements UseCase<void, NoParams> {
  final AuthenticationRepository repository;

  LogoutUseCase({required this.repository});
  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return repository.logout();
  }
}
