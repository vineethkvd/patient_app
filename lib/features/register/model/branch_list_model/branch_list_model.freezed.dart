// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BranchListModel _$BranchListModelFromJson(Map<String, dynamic> json) {
  return _BranchListModel.fromJson(json);
}

/// @nodoc
mixin _$BranchListModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "branches")
  List<Branch>? get branches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchListModelCopyWith<BranchListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchListModelCopyWith<$Res> {
  factory $BranchListModelCopyWith(
          BranchListModel value, $Res Function(BranchListModel) then) =
      _$BranchListModelCopyWithImpl<$Res, BranchListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "branches") List<Branch>? branches});
}

/// @nodoc
class _$BranchListModelCopyWithImpl<$Res, $Val extends BranchListModel>
    implements $BranchListModelCopyWith<$Res> {
  _$BranchListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? branches = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      branches: freezed == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchListModelImplCopyWith<$Res>
    implements $BranchListModelCopyWith<$Res> {
  factory _$$BranchListModelImplCopyWith(_$BranchListModelImpl value,
          $Res Function(_$BranchListModelImpl) then) =
      __$$BranchListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "branches") List<Branch>? branches});
}

/// @nodoc
class __$$BranchListModelImplCopyWithImpl<$Res>
    extends _$BranchListModelCopyWithImpl<$Res, _$BranchListModelImpl>
    implements _$$BranchListModelImplCopyWith<$Res> {
  __$$BranchListModelImplCopyWithImpl(
      _$BranchListModelImpl _value, $Res Function(_$BranchListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? branches = freezed,
  }) {
    return _then(_$BranchListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      branches: freezed == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchListModelImpl implements _BranchListModel {
  const _$BranchListModelImpl(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "branches") final List<Branch>? branches = const []})
      : _branches = branches;

  factory _$BranchListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchListModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Branch>? _branches;
  @override
  @JsonKey(name: "branches")
  List<Branch>? get branches {
    final value = _branches;
    if (value == null) return null;
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BranchListModel(status: $status, message: $message, branches: $branches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_branches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchListModelImplCopyWith<_$BranchListModelImpl> get copyWith =>
      __$$BranchListModelImplCopyWithImpl<_$BranchListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchListModelImplToJson(
      this,
    );
  }
}

abstract class _BranchListModel implements BranchListModel {
  const factory _BranchListModel(
          {@JsonKey(name: "status") final bool? status,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "branches") final List<Branch>? branches}) =
      _$BranchListModelImpl;

  factory _BranchListModel.fromJson(Map<String, dynamic> json) =
      _$BranchListModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "branches")
  List<Branch>? get branches;
  @override
  @JsonKey(ignore: true)
  _$$BranchListModelImplCopyWith<_$BranchListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "patients_count")
  int? get patientsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "mail")
  String? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "gst")
  String? get gst => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "patients_count") int? patientsCount,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "mail") String? mail,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "gst") String? gst,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? patientsCount = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? mail = freezed,
    Object? address = freezed,
    Object? gst = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      patientsCount: freezed == patientsCount
          ? _value.patientsCount
          : patientsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
          _$BranchImpl value, $Res Function(_$BranchImpl) then) =
      __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "patients_count") int? patientsCount,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "mail") String? mail,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "gst") String? gst,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
      _$BranchImpl _value, $Res Function(_$BranchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? patientsCount = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? mail = freezed,
    Object? address = freezed,
    Object? gst = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$BranchImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      patientsCount: freezed == patientsCount
          ? _value.patientsCount
          : patientsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchImpl implements _Branch {
  const _$BranchImpl(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "patients_count") this.patientsCount = 0,
      @JsonKey(name: "location") this.location = '',
      @JsonKey(name: "phone") this.phone = '',
      @JsonKey(name: "mail") this.mail = '',
      @JsonKey(name: "address") this.address = '',
      @JsonKey(name: "gst") this.gst = '',
      @JsonKey(name: "is_active") this.isActive = false});

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "patients_count")
  final int? patientsCount;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "mail")
  final String? mail;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "gst")
  final String? gst;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'Branch(id: $id, name: $name, patientsCount: $patientsCount, location: $location, phone: $phone, mail: $mail, address: $address, gst: $gst, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.patientsCount, patientsCount) ||
                other.patientsCount == patientsCount) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, patientsCount,
      location, phone, mail, address, gst, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(
      this,
    );
  }
}

abstract class _Branch implements Branch {
  const factory _Branch(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "patients_count") final int? patientsCount,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "mail") final String? mail,
      @JsonKey(name: "address") final String? address,
      @JsonKey(name: "gst") final String? gst,
      @JsonKey(name: "is_active") final bool? isActive}) = _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "patients_count")
  int? get patientsCount;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "mail")
  String? get mail;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "gst")
  String? get gst;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
