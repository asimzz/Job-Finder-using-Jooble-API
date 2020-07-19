import 'package:job_finder/domain/core/value_converters.dart';

class Salary {
  final String value;

  factory Salary(String input) {
    assert(input != null);
    return Salary._(
      convertEmptyTypeToSomeValue(input),
    );
  }

  const Salary._(this.value);
}

class JobType {
  final String value;

  factory JobType(String input) {
    assert(input != null);
    return JobType._(
      convertEmptyTypeToSomeValue(input),
    );
  }

  const JobType._(this.value);
}

class UpdatedDate {
  final String value;

  factory UpdatedDate(String input) {
    assert(input != null);
    return UpdatedDate._(
      convertDateStringToDateTimeObject(input),
    );
  }

  const UpdatedDate._(this.value);
}
