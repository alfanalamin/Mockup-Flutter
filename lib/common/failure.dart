import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties;
  Failure([this.properties = const <dynamic>[]]);

  @override
  List<Object> get props => [properties];
}

class RequestFailure extends Failure {
  final int code;
  final String message;

  RequestFailure(this.code, this.message) : super([code, message]);
}