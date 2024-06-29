// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientListModel _$PatientListModelFromJson(Map<String, dynamic> json) {
  return _PatientListModel.fromJson(json);
}

/// @nodoc
mixin _$PatientListModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "patient")
  List<Patient>? get patient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientListModelCopyWith<PatientListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientListModelCopyWith<$Res> {
  factory $PatientListModelCopyWith(
          PatientListModel value, $Res Function(PatientListModel) then) =
      _$PatientListModelCopyWithImpl<$Res, PatientListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "patient") List<Patient>? patient});
}

/// @nodoc
class _$PatientListModelCopyWithImpl<$Res, $Val extends PatientListModel>
    implements $PatientListModelCopyWith<$Res> {
  _$PatientListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? patient = freezed,
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
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as List<Patient>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientListModelImplCopyWith<$Res>
    implements $PatientListModelCopyWith<$Res> {
  factory _$$PatientListModelImplCopyWith(_$PatientListModelImpl value,
          $Res Function(_$PatientListModelImpl) then) =
      __$$PatientListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "patient") List<Patient>? patient});
}

/// @nodoc
class __$$PatientListModelImplCopyWithImpl<$Res>
    extends _$PatientListModelCopyWithImpl<$Res, _$PatientListModelImpl>
    implements _$$PatientListModelImplCopyWith<$Res> {
  __$$PatientListModelImplCopyWithImpl(_$PatientListModelImpl _value,
      $Res Function(_$PatientListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? patient = freezed,
  }) {
    return _then(_$PatientListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: freezed == patient
          ? _value._patient
          : patient // ignore: cast_nullable_to_non_nullable
              as List<Patient>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientListModelImpl implements _PatientListModel {
  const _$PatientListModelImpl(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "patient") final List<Patient>? patient = const []})
      : _patient = patient;

  factory _$PatientListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientListModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Patient>? _patient;
  @override
  @JsonKey(name: "patient")
  List<Patient>? get patient {
    final value = _patient;
    if (value == null) return null;
    if (_patient is EqualUnmodifiableListView) return _patient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatientListModel(status: $status, message: $message, patient: $patient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._patient, _patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_patient));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientListModelImplCopyWith<_$PatientListModelImpl> get copyWith =>
      __$$PatientListModelImplCopyWithImpl<_$PatientListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientListModelImplToJson(
      this,
    );
  }
}

abstract class _PatientListModel implements PatientListModel {
  const factory _PatientListModel(
          {@JsonKey(name: "status") final bool? status,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "patient") final List<Patient>? patient}) =
      _$PatientListModelImpl;

  factory _PatientListModel.fromJson(Map<String, dynamic> json) =
      _$PatientListModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "patient")
  List<Patient>? get patient;
  @override
  @JsonKey(ignore: true)
  _$$PatientListModelImplCopyWith<_$PatientListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "patientdetails_set")
  List<PatientdetailsSet>? get patientdetailsSet =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "branch")
  Branch? get branch => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "payment")
  String? get payment => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  int? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_amount")
  int? get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "advance_amount")
  int? get advanceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_amount")
  int? get balanceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "date_nd_time")
  String? get dateNdTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "patientdetails_set")
      List<PatientdetailsSet>? patientdetailsSet,
      @JsonKey(name: "branch") Branch? branch,
      @JsonKey(name: "user") String? user,
      @JsonKey(name: "payment") String? payment,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "price") int? price,
      @JsonKey(name: "total_amount") int? totalAmount,
      @JsonKey(name: "discount_amount") int? discountAmount,
      @JsonKey(name: "advance_amount") int? advanceAmount,
      @JsonKey(name: "balance_amount") int? balanceAmount,
      @JsonKey(name: "date_nd_time") String? dateNdTime,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});

  $BranchCopyWith<$Res>? get branch;
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? patientdetailsSet = freezed,
    Object? branch = freezed,
    Object? user = freezed,
    Object? payment = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? price = freezed,
    Object? totalAmount = freezed,
    Object? discountAmount = freezed,
    Object? advanceAmount = freezed,
    Object? balanceAmount = freezed,
    Object? dateNdTime = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      patientdetailsSet: freezed == patientdetailsSet
          ? _value.patientdetailsSet
          : patientdetailsSet // ignore: cast_nullable_to_non_nullable
              as List<PatientdetailsSet>?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      advanceAmount: freezed == advanceAmount
          ? _value.advanceAmount
          : advanceAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      balanceAmount: freezed == balanceAmount
          ? _value.balanceAmount
          : balanceAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dateNdTime: freezed == dateNdTime
          ? _value.dateNdTime
          : dateNdTime // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res>? get branch {
    if (_value.branch == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.branch!, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "patientdetails_set")
      List<PatientdetailsSet>? patientdetailsSet,
      @JsonKey(name: "branch") Branch? branch,
      @JsonKey(name: "user") String? user,
      @JsonKey(name: "payment") String? payment,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "price") int? price,
      @JsonKey(name: "total_amount") int? totalAmount,
      @JsonKey(name: "discount_amount") int? discountAmount,
      @JsonKey(name: "advance_amount") int? advanceAmount,
      @JsonKey(name: "balance_amount") int? balanceAmount,
      @JsonKey(name: "date_nd_time") String? dateNdTime,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});

  @override
  $BranchCopyWith<$Res>? get branch;
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? patientdetailsSet = freezed,
    Object? branch = freezed,
    Object? user = freezed,
    Object? payment = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? price = freezed,
    Object? totalAmount = freezed,
    Object? discountAmount = freezed,
    Object? advanceAmount = freezed,
    Object? balanceAmount = freezed,
    Object? dateNdTime = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PatientImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      patientdetailsSet: freezed == patientdetailsSet
          ? _value._patientdetailsSet
          : patientdetailsSet // ignore: cast_nullable_to_non_nullable
              as List<PatientdetailsSet>?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      advanceAmount: freezed == advanceAmount
          ? _value.advanceAmount
          : advanceAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      balanceAmount: freezed == balanceAmount
          ? _value.balanceAmount
          : balanceAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dateNdTime: freezed == dateNdTime
          ? _value.dateNdTime
          : dateNdTime // ignore: cast_nullable_to_non_nullable
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
class _$PatientImpl implements _Patient {
  const _$PatientImpl(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "patientdetails_set")
      final List<PatientdetailsSet>? patientdetailsSet = const [],
      @JsonKey(name: "branch") this.branch = const Branch(),
      @JsonKey(name: "user") this.user = '',
      @JsonKey(name: "payment") this.payment = '',
      @JsonKey(name: "name") this.name = '',
      @JsonKey(name: "phone") this.phone = '',
      @JsonKey(name: "address") this.address = '',
      @JsonKey(name: "price") this.price = 0,
      @JsonKey(name: "total_amount") this.totalAmount = 0,
      @JsonKey(name: "discount_amount") this.discountAmount = 0,
      @JsonKey(name: "advance_amount") this.advanceAmount = 0,
      @JsonKey(name: "balance_amount") this.balanceAmount = 0,
      @JsonKey(name: "date_nd_time") this.dateNdTime = '',
      @JsonKey(name: "is_active") this.isActive = false,
      @JsonKey(name: "created_at") this.createdAt = '',
      @JsonKey(name: "updated_at") this.updatedAt = ''})
      : _patientdetailsSet = patientdetailsSet;

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  final List<PatientdetailsSet>? _patientdetailsSet;
  @override
  @JsonKey(name: "patientdetails_set")
  List<PatientdetailsSet>? get patientdetailsSet {
    final value = _patientdetailsSet;
    if (value == null) return null;
    if (_patientdetailsSet is EqualUnmodifiableListView)
      return _patientdetailsSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "branch")
  final Branch? branch;
  @override
  @JsonKey(name: "user")
  final String? user;
  @override
  @JsonKey(name: "payment")
  final String? payment;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "price")
  final int? price;
  @override
  @JsonKey(name: "total_amount")
  final int? totalAmount;
  @override
  @JsonKey(name: "discount_amount")
  final int? discountAmount;
  @override
  @JsonKey(name: "advance_amount")
  final int? advanceAmount;
  @override
  @JsonKey(name: "balance_amount")
  final int? balanceAmount;
  @override
  @JsonKey(name: "date_nd_time")
  final String? dateNdTime;
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
    return 'Patient(id: $id, patientdetailsSet: $patientdetailsSet, branch: $branch, user: $user, payment: $payment, name: $name, phone: $phone, address: $address, price: $price, totalAmount: $totalAmount, discountAmount: $discountAmount, advanceAmount: $advanceAmount, balanceAmount: $balanceAmount, dateNdTime: $dateNdTime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._patientdetailsSet, _patientdetailsSet) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.advanceAmount, advanceAmount) ||
                other.advanceAmount == advanceAmount) &&
            (identical(other.balanceAmount, balanceAmount) ||
                other.balanceAmount == balanceAmount) &&
            (identical(other.dateNdTime, dateNdTime) ||
                other.dateNdTime == dateNdTime) &&
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
      const DeepCollectionEquality().hash(_patientdetailsSet),
      branch,
      user,
      payment,
      name,
      phone,
      address,
      price,
      totalAmount,
      discountAmount,
      advanceAmount,
      balanceAmount,
      dateNdTime,
      isActive,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "patientdetails_set")
      final List<PatientdetailsSet>? patientdetailsSet,
      @JsonKey(name: "branch") final Branch? branch,
      @JsonKey(name: "user") final String? user,
      @JsonKey(name: "payment") final String? payment,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "address") final String? address,
      @JsonKey(name: "price") final int? price,
      @JsonKey(name: "total_amount") final int? totalAmount,
      @JsonKey(name: "discount_amount") final int? discountAmount,
      @JsonKey(name: "advance_amount") final int? advanceAmount,
      @JsonKey(name: "balance_amount") final int? balanceAmount,
      @JsonKey(name: "date_nd_time") final String? dateNdTime,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "patientdetails_set")
  List<PatientdetailsSet>? get patientdetailsSet;
  @override
  @JsonKey(name: "branch")
  Branch? get branch;
  @override
  @JsonKey(name: "user")
  String? get user;
  @override
  @JsonKey(name: "payment")
  String? get payment;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "price")
  int? get price;
  @override
  @JsonKey(name: "total_amount")
  int? get totalAmount;
  @override
  @JsonKey(name: "discount_amount")
  int? get discountAmount;
  @override
  @JsonKey(name: "advance_amount")
  int? get advanceAmount;
  @override
  @JsonKey(name: "balance_amount")
  int? get balanceAmount;
  @override
  @JsonKey(name: "date_nd_time")
  String? get dateNdTime;
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
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientdetailsSet _$PatientdetailsSetFromJson(Map<String, dynamic> json) {
  return _PatientdetailsSet.fromJson(json);
}

/// @nodoc
mixin _$PatientdetailsSet {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "male")
  String? get male => throw _privateConstructorUsedError;
  @JsonKey(name: "female")
  String? get female => throw _privateConstructorUsedError;
  @JsonKey(name: "patient")
  int? get patient => throw _privateConstructorUsedError;
  @JsonKey(name: "treatment")
  int? get treatment => throw _privateConstructorUsedError;
  @JsonKey(name: "treatment_name")
  String? get treatmentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientdetailsSetCopyWith<PatientdetailsSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientdetailsSetCopyWith<$Res> {
  factory $PatientdetailsSetCopyWith(
          PatientdetailsSet value, $Res Function(PatientdetailsSet) then) =
      _$PatientdetailsSetCopyWithImpl<$Res, PatientdetailsSet>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "male") String? male,
      @JsonKey(name: "female") String? female,
      @JsonKey(name: "patient") int? patient,
      @JsonKey(name: "treatment") int? treatment,
      @JsonKey(name: "treatment_name") String? treatmentName});
}

/// @nodoc
class _$PatientdetailsSetCopyWithImpl<$Res, $Val extends PatientdetailsSet>
    implements $PatientdetailsSetCopyWith<$Res> {
  _$PatientdetailsSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? male = freezed,
    Object? female = freezed,
    Object? patient = freezed,
    Object? treatment = freezed,
    Object? treatmentName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      male: freezed == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as String?,
      female: freezed == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as int?,
      treatment: freezed == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as int?,
      treatmentName: freezed == treatmentName
          ? _value.treatmentName
          : treatmentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientdetailsSetImplCopyWith<$Res>
    implements $PatientdetailsSetCopyWith<$Res> {
  factory _$$PatientdetailsSetImplCopyWith(_$PatientdetailsSetImpl value,
          $Res Function(_$PatientdetailsSetImpl) then) =
      __$$PatientdetailsSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "male") String? male,
      @JsonKey(name: "female") String? female,
      @JsonKey(name: "patient") int? patient,
      @JsonKey(name: "treatment") int? treatment,
      @JsonKey(name: "treatment_name") String? treatmentName});
}

/// @nodoc
class __$$PatientdetailsSetImplCopyWithImpl<$Res>
    extends _$PatientdetailsSetCopyWithImpl<$Res, _$PatientdetailsSetImpl>
    implements _$$PatientdetailsSetImplCopyWith<$Res> {
  __$$PatientdetailsSetImplCopyWithImpl(_$PatientdetailsSetImpl _value,
      $Res Function(_$PatientdetailsSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? male = freezed,
    Object? female = freezed,
    Object? patient = freezed,
    Object? treatment = freezed,
    Object? treatmentName = freezed,
  }) {
    return _then(_$PatientdetailsSetImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      male: freezed == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as String?,
      female: freezed == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as int?,
      treatment: freezed == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as int?,
      treatmentName: freezed == treatmentName
          ? _value.treatmentName
          : treatmentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientdetailsSetImpl implements _PatientdetailsSet {
  const _$PatientdetailsSetImpl(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "male") this.male = '',
      @JsonKey(name: "female") this.female = '',
      @JsonKey(name: "patient") this.patient = 0,
      @JsonKey(name: "treatment") this.treatment = 0,
      @JsonKey(name: "treatment_name") this.treatmentName = ''});

  factory _$PatientdetailsSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientdetailsSetImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "male")
  final String? male;
  @override
  @JsonKey(name: "female")
  final String? female;
  @override
  @JsonKey(name: "patient")
  final int? patient;
  @override
  @JsonKey(name: "treatment")
  final int? treatment;
  @override
  @JsonKey(name: "treatment_name")
  final String? treatmentName;

  @override
  String toString() {
    return 'PatientdetailsSet(id: $id, male: $male, female: $female, patient: $patient, treatment: $treatment, treatmentName: $treatmentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientdetailsSetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.female, female) || other.female == female) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.treatment, treatment) ||
                other.treatment == treatment) &&
            (identical(other.treatmentName, treatmentName) ||
                other.treatmentName == treatmentName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, male, female, patient, treatment, treatmentName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientdetailsSetImplCopyWith<_$PatientdetailsSetImpl> get copyWith =>
      __$$PatientdetailsSetImplCopyWithImpl<_$PatientdetailsSetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientdetailsSetImplToJson(
      this,
    );
  }
}

abstract class _PatientdetailsSet implements PatientdetailsSet {
  const factory _PatientdetailsSet(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "male") final String? male,
          @JsonKey(name: "female") final String? female,
          @JsonKey(name: "patient") final int? patient,
          @JsonKey(name: "treatment") final int? treatment,
          @JsonKey(name: "treatment_name") final String? treatmentName}) =
      _$PatientdetailsSetImpl;

  factory _PatientdetailsSet.fromJson(Map<String, dynamic> json) =
      _$PatientdetailsSetImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "male")
  String? get male;
  @override
  @JsonKey(name: "female")
  String? get female;
  @override
  @JsonKey(name: "patient")
  int? get patient;
  @override
  @JsonKey(name: "treatment")
  int? get treatment;
  @override
  @JsonKey(name: "treatment_name")
  String? get treatmentName;
  @override
  @JsonKey(ignore: true)
  _$$PatientdetailsSetImplCopyWith<_$PatientdetailsSetImpl> get copyWith =>
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
