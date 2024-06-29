// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'treatment_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TreatmentListModel _$TreatmentListModelFromJson(Map<String, dynamic> json) {
  return _TreatmentListModel.fromJson(json);
}

/// @nodoc
mixin _$TreatmentListModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "treatments")
  List<Treatment>? get treatments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreatmentListModelCopyWith<TreatmentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreatmentListModelCopyWith<$Res> {
  factory $TreatmentListModelCopyWith(
          TreatmentListModel value, $Res Function(TreatmentListModel) then) =
      _$TreatmentListModelCopyWithImpl<$Res, TreatmentListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "treatments") List<Treatment>? treatments});
}

/// @nodoc
class _$TreatmentListModelCopyWithImpl<$Res, $Val extends TreatmentListModel>
    implements $TreatmentListModelCopyWith<$Res> {
  _$TreatmentListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? treatments = freezed,
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
      treatments: freezed == treatments
          ? _value.treatments
          : treatments // ignore: cast_nullable_to_non_nullable
              as List<Treatment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreatmentListModelImplCopyWith<$Res>
    implements $TreatmentListModelCopyWith<$Res> {
  factory _$$TreatmentListModelImplCopyWith(_$TreatmentListModelImpl value,
          $Res Function(_$TreatmentListModelImpl) then) =
      __$$TreatmentListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "treatments") List<Treatment>? treatments});
}

/// @nodoc
class __$$TreatmentListModelImplCopyWithImpl<$Res>
    extends _$TreatmentListModelCopyWithImpl<$Res, _$TreatmentListModelImpl>
    implements _$$TreatmentListModelImplCopyWith<$Res> {
  __$$TreatmentListModelImplCopyWithImpl(_$TreatmentListModelImpl _value,
      $Res Function(_$TreatmentListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? treatments = freezed,
  }) {
    return _then(_$TreatmentListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      treatments: freezed == treatments
          ? _value._treatments
          : treatments // ignore: cast_nullable_to_non_nullable
              as List<Treatment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreatmentListModelImpl implements _TreatmentListModel {
  const _$TreatmentListModelImpl(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "treatments")
      final List<Treatment>? treatments = const []})
      : _treatments = treatments;

  factory _$TreatmentListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreatmentListModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Treatment>? _treatments;
  @override
  @JsonKey(name: "treatments")
  List<Treatment>? get treatments {
    final value = _treatments;
    if (value == null) return null;
    if (_treatments is EqualUnmodifiableListView) return _treatments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TreatmentListModel(status: $status, message: $message, treatments: $treatments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreatmentListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._treatments, _treatments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_treatments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreatmentListModelImplCopyWith<_$TreatmentListModelImpl> get copyWith =>
      __$$TreatmentListModelImplCopyWithImpl<_$TreatmentListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreatmentListModelImplToJson(
      this,
    );
  }
}

abstract class _TreatmentListModel implements TreatmentListModel {
  const factory _TreatmentListModel(
          {@JsonKey(name: "status") final bool? status,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "treatments") final List<Treatment>? treatments}) =
      _$TreatmentListModelImpl;

  factory _TreatmentListModel.fromJson(Map<String, dynamic> json) =
      _$TreatmentListModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "treatments")
  List<Treatment>? get treatments;
  @override
  @JsonKey(ignore: true)
  _$$TreatmentListModelImplCopyWith<_$TreatmentListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Treatment _$TreatmentFromJson(Map<String, dynamic> json) {
  return _Treatment.fromJson(json);
}

/// @nodoc
mixin _$Treatment {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "branches")
  List<Branch>? get branches => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreatmentCopyWith<Treatment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreatmentCopyWith<$Res> {
  factory $TreatmentCopyWith(Treatment value, $Res Function(Treatment) then) =
      _$TreatmentCopyWithImpl<$Res, Treatment>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "branches") List<Branch>? branches,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "duration") String? duration,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$TreatmentCopyWithImpl<$Res, $Val extends Treatment>
    implements $TreatmentCopyWith<$Res> {
  _$TreatmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? branches = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? price = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      branches: freezed == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreatmentImplCopyWith<$Res>
    implements $TreatmentCopyWith<$Res> {
  factory _$$TreatmentImplCopyWith(
          _$TreatmentImpl value, $Res Function(_$TreatmentImpl) then) =
      __$$TreatmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "branches") List<Branch>? branches,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "duration") String? duration,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$TreatmentImplCopyWithImpl<$Res>
    extends _$TreatmentCopyWithImpl<$Res, _$TreatmentImpl>
    implements _$$TreatmentImplCopyWith<$Res> {
  __$$TreatmentImplCopyWithImpl(
      _$TreatmentImpl _value, $Res Function(_$TreatmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? branches = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? price = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TreatmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      branches: freezed == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreatmentImpl implements _Treatment {
  const _$TreatmentImpl(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "branches") final List<Branch>? branches = const [],
      @JsonKey(name: "name") this.name = '',
      @JsonKey(name: "duration") this.duration = '',
      @JsonKey(name: "price") this.price = '',
      @JsonKey(name: "is_active") this.isActive = false,
      @JsonKey(name: "created_at") this.createdAt = '',
      @JsonKey(name: "updated_at") this.updatedAt = ''})
      : _branches = branches;

  factory _$TreatmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreatmentImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
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
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "duration")
  final String? duration;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'Treatment(id: $id, branches: $branches, name: $name, duration: $duration, price: $price, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreatmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_branches),
      name,
      duration,
      price,
      isActive,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreatmentImplCopyWith<_$TreatmentImpl> get copyWith =>
      __$$TreatmentImplCopyWithImpl<_$TreatmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreatmentImplToJson(
      this,
    );
  }
}

abstract class _Treatment implements Treatment {
  const factory _Treatment(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "branches") final List<Branch>? branches,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "duration") final String? duration,
      @JsonKey(name: "price") final String? price,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$TreatmentImpl;

  factory _Treatment.fromJson(Map<String, dynamic> json) =
      _$TreatmentImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "branches")
  List<Branch>? get branches;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "duration")
  String? get duration;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TreatmentImplCopyWith<_$TreatmentImpl> get copyWith =>
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
      @JsonKey(name: "name") this.name = '',
      @JsonKey(name: "patients_count") this.patientsCount,
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
