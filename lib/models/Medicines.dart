/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Medicines type in your schema. */
@immutable
class Medicines extends Model {
  static const classType = const _MedicinesModelType();
  final String id;
  final String? _title;
  final MedicineStatus? _status;
  final int? _rating;
  final Split? _time;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String get title {
    try {
      return _title!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  MedicineStatus get status {
    try {
      return _status!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  int? get rating {
    return _rating;
  }

  Split? get time {
    return _time;
  }

  const Medicines._internal(
      {required this.id, required title, required status, rating, time})
      : _title = title,
        _status = status,
        _rating = rating,
        _time = time;

  factory Medicines(
      {String? id,
      required String title,
      required MedicineStatus status,
      int? rating,
      Split? time}) {
    return Medicines._internal(
        id: id == null ? UUID.getUUID() : id,
        title: title,
        status: status,
        rating: rating,
        time: time);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Medicines &&
        id == other.id &&
        _title == other._title &&
        _status == other._status &&
        _rating == other._rating &&
        _time == other._time;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Medicines {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write(
        "status=" + (_status != null ? enumToString(_status)! : "null") + ", ");
    buffer.write(
        "rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("time=" + (_time != null ? enumToString(_time)! : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Medicines copyWith(
      {String? id,
      String? title,
      MedicineStatus? status,
      int? rating,
      Split? time}) {
    return Medicines(
        id: id ?? this.id,
        title: title ?? this.title,
        status: status ?? this.status,
        rating: rating ?? this.rating,
        time: time ?? this.time);
  }

  Medicines.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _title = json['title'],
        _status = enumFromString<MedicineStatus>(
            json['status'], MedicineStatus.values),
        _rating = (json['rating'] as num?)?.toInt(),
        _time = enumFromString<Split>(json['time'], Split.values);

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': _title,
        'status': enumToString(_status),
        'rating': _rating,
        'time': enumToString(_time)
      };

  static final QueryField ID = QueryField(fieldName: "medicines.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField TIME = QueryField(fieldName: "time");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Medicines";
    modelSchemaDefinition.pluralName = "Medicines";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Medicines.TITLE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Medicines.STATUS,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Medicines.RATING,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Medicines.TIME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));
  });
}

class _MedicinesModelType extends ModelType<Medicines> {
  const _MedicinesModelType();

  @override
  Medicines fromJson(Map<String, dynamic> jsonData) {
    return Medicines.fromJson(jsonData);
  }
}
