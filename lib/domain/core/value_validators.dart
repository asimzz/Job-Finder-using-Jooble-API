import 'package:dartz/dartz.dart';

import 'errors/value_failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  const passwordRegex =
      r'^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateJobLocation(String input) {
  try {
    double.parse(input);
    return left(ValueFailure.invalidLocation(failedValue: input));
  } on FormatException {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSalaryInput(
    String input, int salaryRange) {
  try {
    final inputNumber = double.parse(input);
    if (inputNumber <= salaryRange) {
      return right(input);
    } else {
      return left(
          ValueFailure.exceedingLength(failedValue: input, max: salaryRange));
    }
  } on FormatException {
    return left(ValueFailure.invalidSalary(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateKeywordInput(
    String input, int maxLength) {
  if (input.isNotEmpty) {
    if (input.length <= maxLength) {
      return right(input);
    } else {
      return left(
          ValueFailure.exceedingLength(failedValue: input, max: maxLength));
    }
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}
