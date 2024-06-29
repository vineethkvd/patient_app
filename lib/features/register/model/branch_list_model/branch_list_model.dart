import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_list_model.freezed.dart';
part 'branch_list_model.g.dart';

@freezed
class BranchListModel with _$BranchListModel {
  const factory BranchListModel({
    @JsonKey(name: "status") @Default(false) bool? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "branches") @Default([]) List<Branch>? branches,
  }) = _BranchListModel;

  factory BranchListModel.fromJson(Map<String, dynamic> json) =>
      _$BranchListModelFromJson(json);
}

@freezed

class Branch with _$Branch {
  const factory Branch({
    @JsonKey(name: "id") @Default(0) int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "patients_count") @Default(0) int? patientsCount,
    @JsonKey(name: "location") @Default('') String? location,
    @JsonKey(name: "phone") @Default('') String? phone,
    @JsonKey(name: "mail") @Default('') String? mail,
    @JsonKey(name: "address") @Default('') String? address,
    @JsonKey(name: "gst") @Default('') String? gst,
    @JsonKey(name: "is_active") @Default(false) bool? isActive,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
