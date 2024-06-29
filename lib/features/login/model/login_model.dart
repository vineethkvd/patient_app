import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    @JsonKey(name: "status") @Default(false) bool? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "token") @Default('')String? token,
    @JsonKey(name: "is_superuser") @Default(false) bool? isSuperuser,
    @JsonKey(name: "user_details") @Default(UserData()) UserData? userDetails,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: "id") @Default(0) int? id,
    @JsonKey(name: "last_login") @Default('')String? lastLogin,
    @JsonKey(name: "name") @Default('') String? name,
    @JsonKey(name: "phone") @Default('') String? phone,
    @JsonKey(name: "address") @Default('') String? address,
    @JsonKey(name: "mail") @Default('')String? mail,
    @JsonKey(name: "username") @Default('') String? username,
    @JsonKey(name: "password") @Default('') String? password,
    @JsonKey(name: "password_text") @Default('') String? passwordText,
    @JsonKey(name: "admin") @Default(0) int? admin,
    @JsonKey(name: "is_admin") @Default(false) bool? isAdmin,
    @JsonKey(name: "is_active") @Default(false) bool? isActive,
    @JsonKey(name: "created_at") @Default('') String? createdAt,
    @JsonKey(name: "updated_at")@Default('') String? updatedAt,
    @JsonKey(name: "branch") @Default('') String? branch,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
