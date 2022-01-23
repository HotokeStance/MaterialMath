// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_submission_result_type_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionSubmissionResultModelAdapter
    extends TypeAdapter<QuestionSubmissionResultModel> {
  @override
  final int typeId = 0;

  @override
  QuestionSubmissionResultModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionSubmissionResultModel(
      symbols: (fields[0] as List).cast<String>(),
      properNumber: fields[1] as int,
      numberOfProblems: fields[2] as int,
      time: fields[3] as String,
      date: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionSubmissionResultModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.symbols)
      ..writeByte(1)
      ..write(obj.properNumber)
      ..writeByte(2)
      ..write(obj.numberOfProblems)
      ..writeByte(3)
      ..write(obj.time)
      ..writeByte(4)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionSubmissionResultModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
