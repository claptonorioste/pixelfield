abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ErrorMessage extends Failure {
  const ErrorMessage(super.message);
}
