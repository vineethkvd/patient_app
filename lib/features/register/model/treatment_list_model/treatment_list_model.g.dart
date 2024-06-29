// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treatment_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TreatmentListModelImpl _$$TreatmentListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TreatmentListModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      treatments: (json['treatments'] as List<dynamic>?)
              ?.map((e) => Treatment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TreatmentListModelImplToJson(
        _$TreatmentListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'treatments': instance.treatments,
    };

_$TreatmentImpl _$$TreatmentImplFromJson(Map<String, dynamic> json) =>
    _$TreatmentImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      branches: (json['branches'] as List<dynamic>?)
              ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      name: json['name'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      price: json['price'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? false,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$TreatmentImplToJson(_$TreatmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branches': instance.branches,
      'name': instance.name,
      'duration': instance.duration,
      'price': instance.price,
      'is_active': instance.isActive,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      patientsCount: (json['patients_count'] as num?)?.toInt(),
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
