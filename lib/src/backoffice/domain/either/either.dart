sealed class Either<L, R> {
  const Either();

  factory Either.success(R value) = Success<L, R>;
  factory Either.failure(L value) = Failure<L, R>;

  T when<T>({
    required T Function(L failure) failure,
    required T Function(R success) success,
  }) {
    return switch (this) {
      Failure(value: final f) => failure(f),
      Success(value: final s) => success(s),
    };
  }
}

class Success<L, R> extends Either<L, R> {
  final R value;
  const Success(this.value);
}

class Failure<L, R> extends Either<L, R> {
  final L value;
  const Failure(this.value);
}

typedef ApiResponse<T> = Future<Either<String, T>>;
