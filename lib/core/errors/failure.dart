abstract class Failure {
  final String message;

  Failure({required this.message});
}

class FetchinDataFailure extends Failure {
  FetchinDataFailure({required super.message});

}
