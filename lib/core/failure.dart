abstract class Failure {
  final dynamic message;
  const Failure(this.message);
}

class ErrorMessage extends Failure {
  const ErrorMessage(super.message);
}
