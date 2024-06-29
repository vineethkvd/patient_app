// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientListModelImpl _$$PatientListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientListModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      patient: (json['patient'] as List<dynamic>?)
              ?.map((e) => Patient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PatientListModelImplToJson(
        _$PatientListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'patient': instance.patient,
    };

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      patientdetailsSet: (json['patientdetails_set'] as List<dynamic>?)
              ?.map(
                  (e) => PatientdetailsSet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      branch: json['branch'] == null
          ? const Branch()
          : Branch.fromJson(json['branch'] as Map<String, dynamic>),
      user: json['user'] as String? ?? '',
      payment: json['payment'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      address: json['address'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
      totalAmount: (json['total_amount'] as num?)?.toInt() ?? 0,
      discountAmount: (json['discount_amount'] as num?)?.toInt() ?? 0,
      advanceAmount: (json['advance_amount'] as num?)?.toInt() ?? 0,
      balanceAmount: (json['balance_amount'] as num?)?.toInt() ?? 0,
      dateNdTime: json['date_nd_time'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? false,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientdetails_set': instance.patientdetailsSet,
      'branch': instance.branch,
      'user': instance.user,
      'payment': instance.payment,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'price': instance.price,
      'total_amount': instance.totalAmount,
      'discount_amount': instance.discountAmount,
      'advance_amount': instance.advanceAmount,
      'balance_amount': instance.balanceAmount,
      'date_nd_time': instance.dateNdTime,
      'is_active': instance.isActive,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$PatientdetailsSetImpl _$$PatientdetailsSetImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientdetailsSetImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      male: json['male'] as String? ?? '',
      female: json['female'] as String? ?? '',
      patient: (json['patient'] as num?)?.toInt() ?? 0,
      treatment: (json['treatment'] as num?)?.toInt() ?? 0,
      treatmentName: json['treatment_name'] as String? ?? '',
    );

Map<String, dynamic> _$$PatientdetailsSetImplToJson(
        _$PatientdetailsSetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'male': instance.male,
      'female': instance.female,
      'patient': instance.patient,
      'treatment': instance.treatment,
      'treatment_name': instance.treatmentName,
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      patientsCount: (json['patients_count'] as num?)?.toInt() ?? 0,
      location: json['location'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      mail: json['mail'] as String? ?? '',
      address: json['address'] as String? ?? '',
      gst: json['gst'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'patients_count': instance.patientsCount,
      'location': instance.location,
      'phone': instance.phone,
      'mail': instance.mail,
      'address': instance.address,
      'gst': instance.gst,
      'is_active': instance.isActive,
    };
