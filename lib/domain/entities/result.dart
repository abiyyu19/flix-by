sealed class Result<T> {
  const Result();

   const factory Result.success(T value) = Success;
   const factory Result.failed(String value) = Failed;

   bool get isSuccess => this is Success<T>;
   boot get isFailed => this is Failed<T>;

}

class Success<T> extends Result<T> {
 final T value;

 const Success(this.value);
}

class Failed<T> extends Result<T> {
  final String value;

  const Failed(this.value);
}