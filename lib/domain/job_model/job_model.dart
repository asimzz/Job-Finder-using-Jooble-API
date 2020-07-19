import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'job_model.freezed.dart';

@freezed
abstract class JobModel with _$JobModel {
  const factory JobModel({
    @required String title,
    @required String location,
    @required String snippet,
    @required Salary salary,
    @required String source,
    @required JobType type,
    @required String link,
    @required String company,
    @required UpdatedDate updated,
    @required int id,
  }) = _JobModel;
}
