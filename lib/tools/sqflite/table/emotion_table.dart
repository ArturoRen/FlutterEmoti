import 'package:emoti/tools/sqflite/base_entity.dart';

class EmotionTable extends SqlBaseEntity {
  EmotionTable._internal();

  static final EmotionTable _instance = EmotionTable._internal();

  factory EmotionTable() => _instance;

  @override
  String tableCreateSqlString() {
    return '''create table if not exists ${tableName()} (
    id integer primary key autoincrement,
    channelName text not null,
    userId text not null,
    nickname text not null,
    avatar text not null,
    callType text not null,
    endTime integer not null,
    duration integer not null
    )''';
  }

  @override
  String tableName() => "EmotionTable";

  @override
  String updateSqlString(int oldVersion, int newVersion) {
    return '''create table if not exists ${tableName()} (
    id integer primary key autoincrement,
    channelName text not null,
    userId text not null,
    nickname text not null,
    avatar text not null,
    callType text not null,
    endTime integer not null,
    duration integer not null
    )''';
  }
}
