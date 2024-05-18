import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<Res, Err> with _$Result {
  const factory Result.error(Err error) = ResultError;
  const factory Result.success(Res result) = ResultSuccess;
}