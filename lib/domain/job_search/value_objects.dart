import 'package:dartz/dartz.dart';

import '../core/errors/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class Keyword extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;
  factory Keyword(String input) {
    assert(input != null);
    return Keyword._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const Keyword._(this.value);
}

class JobLocation extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory JobLocation(String input) {
    assert(input != null);
    return JobLocation._(
      validateJobLocation(input),
    );
  }

  const JobLocation._(this.value);
}

class SalaryInput extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const salaryRange = 200000;
  factory SalaryInput(String input) {
    assert(input != null);
    return SalaryInput._(
      validateSalaryInput(input, salaryRange),
    );
  }

  const SalaryInput._(this.value);
}
