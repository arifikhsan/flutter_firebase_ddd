import 'package:dartz/dartz.dart';
import 'package:flutter_firebase_ddd/domain/core/failures.dart';
import 'package:flutter_firebase_ddd/domain/core/value_objects.dart';
import 'package:flutter_firebase_ddd/domain/core/value_validatiors.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
