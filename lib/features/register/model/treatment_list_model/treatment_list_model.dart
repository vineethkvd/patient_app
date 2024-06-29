import 'package:freezed_annotation/freezed_annotation.dart';

part 'treatment_list_model.freezed.dart';
part 'treatment_list_model.g.dart';

@freezed
class TreatmentListModel with _$TreatmentListModel {
  const factory TreatmentListModel({
    @JsonKey(name: "status") @Default(false)  bool? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "treatments")  @Default([]) List<Treatment>? treatments,
  }) = _TreatmentListModel;

  factory TreatmentListModel.fromJson(Map<String, dynamic> json) =>
      _$TreatmentListModelFromJson(json);
}

@freezed
class Treatment with _$Treatment {
  const factory Treatment({
    @JsonKey(name: "id") @Default(0)  int? id,
    @JsonKey(name: "branches") @Default([])  List<Branch>? branches,
    @JsonKey(name: "name") @Default('')  String? name,
    @JsonKey(name: "duration") @Default('')  String? duration,
    @JsonKey(name: "price") @Default('')  String? price,
    @JsonKey(name: "is_active") @Default(false)  bool? isActive,
    @JsonKey(name: "created_at") @Default('')  String? createdAt,
    @JsonKey(name: "updated_at") @Default('')  String? updatedAt,
  }) = _Treatment;

  factory Treatment.fromJson(Map<String, dynamic> json) =>
      _$TreatmentFromJson(json);
}

@freezed
class Branch with _$Branch {
  const factory Branch({
    @JsonKey(name: "id") @Default(0)  int? id,
    @JsonKey(name: "name") @Default('')  @Default(0) String? name,
    @JsonKey(name: "patients_count") int? patientsCount,
    @JsonKey(name: "location") @Default('') String? location,
    @JsonKey(name: "phone") @Default('')  String? phone,
    @JsonKey(name: "mail") @Default('')  String? mail,
    @JsonKey(name: "address") @Default('')  String? address,
    @JsonKey(name: "gst")  @Default('') String? gst,
    @JsonKey(name: "is_active")  @Default(false) bool? isActive,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
