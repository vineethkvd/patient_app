// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchListModelImpl _$$BranchListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BranchListModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      branches: (json['branches'] as List<dynamic>?)
              ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BranchListModelImplToJson(
        _$BranchListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'branches': instance.branches,
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String?,
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
