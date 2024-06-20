import 'package:dartz/dartz.dart';
import 'package:flutter_application_8/core/errors/failure.dart';

abstract class UseCase<Type, Param> {
  Type call([Param param]);
}

class NoParam {}
