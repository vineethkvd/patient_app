import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_list_model.freezed.dart';
part 'patient_list_model.g.dart';

@freezed
class PatientListModel with _$PatientListModel {
  const factory PatientListModel({
    @JsonKey(name: "status") @Default(false) bool? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "patient") @Default([])  List<Patient>? patient,
  }) = _PatientListModel;

  factory PatientListModel.fromJson(Map<String, dynamic> json) =>
      _$PatientListModelFromJson(json);
}

@freezed
class Patient with _$Patient {
  const factory Patient({
    @JsonKey(name: "id") @Default(0)  int? id,
    @JsonKey(name: "patientdetails_set") @Default([])
    List<PatientdetailsSet>? patientdetailsSet,
    @JsonKey(name: "branch") @Default(Branch())  Branch? branch,
    @JsonKey(name: "user") @Default('') String? user,
    @JsonKey(name: "payment") @Default('') String? payment,
    @JsonKey(name: "name") @Default('') String? name,
    @JsonKey(name: "phone") @Default('') String? phone,
    @JsonKey(name: "address") @Default('') String? address,
    @JsonKey(name: "price") @Default(0) int? price,
    @JsonKey(name: "total_amount") @Default(0) int? totalAmount,
    @JsonKey(name: "discount_amount")  @Default(0) int? discountAmount,
    @JsonKey(name: "advance_amount")  @Default(0) int? advanceAmount,
    @JsonKey(name: "balance_amount")  @Default(0) int? balanceAmount,
    @JsonKey(name: "date_nd_time")  @Default('') String? dateNdTime,
    @JsonKey(name: "is_active")  @Default(false) bool? isActive,
    @JsonKey(name: "created_at")  @Default('') String? createdAt,
    @JsonKey(name: "updated_at")  @Default('') String? updatedAt,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

@freezed
class PatientdetailsSet with _$PatientdetailsSet {
  const factory PatientdetailsSet({
    @JsonKey(name: "id")  @Default(0) int? id,
    @JsonKey(name: "male")  @Default('') String? male,
    @JsonKey(name: "female")  @Default('') String? female,
    @JsonKey(name: "patient")  @Default(0) int? patient,
    @JsonKey(name: "treatment")  @Default(0) int? treatment,
    @JsonKey(name: "treatment_name")  @Default('') String? treatmentName,
  }) = _PatientdetailsSet;

  factory PatientdetailsSet.fromJson(Map<String, dynamic> json) =>
      _$PatientdetailsSetFromJson(json);
}

@freezed
class Branch with _$Branch {
  const factory Branch({
    @JsonKey(name: "id")  @Default(0) int? id,
    @JsonKey(name: "name")  @Default('') String? name,
    @JsonKey(name: "patients_count")  @Default(0) int? patientsCount,
    @JsonKey(name: "location")  @Default('') String? location,
    @JsonKey(name: "phone")  @Default('') String? phone,
    @JsonKey(name: "mail")  @Default('') String? mail,
    @JsonKey(name: "address")  @Default('') String? address,
    @JsonKey(name: "gst")  @Default('') String? gst,
    @JsonKey(name: "is_active")  @Default(false) bool? isActive,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
