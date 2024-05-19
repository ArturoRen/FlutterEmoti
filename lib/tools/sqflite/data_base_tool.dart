import 'dart:io';

import 'package:emoti/packages.dart';
import 'package:emoti/tools/sqflite/base_entity.dart';
import 'package:emoti/tools/sqflite/table/emotion_table.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseTool {
  DataBaseTool._internal();

  static final DataBaseTool _instance = DataBaseTool._internal();

  factory DataBaseTool() => _instance;

  ///版本
  static const int _version = 1;

  Database? _database;

  ///数据库路径
  static const String _dbName = "emoti.db";

  /// 操作类对象
  final List<SqlBaseEntity> _mapperList = [];

  Future<void> initData() async {
    //必须先初始化表单例
    EmotionTable();
    String path = await getDatabasesPath();
    _database = await openDatabase(
      '$path${Platform.pathSeparator}$_dbName',
      version: _version,
      onCreate: _onCreate,
      onUpgrade: _onUpdate
    );
  }

  Future<void> _onCreate(Database db,int version) async {
    Batch batch = db.batch();
    for (var element in _mapperList) {
      batch.execute(element.tableCreateSqlString());
    }
    await batch.commit();
  }

  /// 更新数据表
  Future _onUpdate(Database db, int oldVersion, int newVersion) async {
    var batch = db.batch();
    for (var item in _mapperList) {
      batch.execute(item.updateSqlString(oldVersion, newVersion));
    }
    await batch.commit();
  }

    void addEntity(SqlBaseEntity sqlBaseEntity) {
    if (!_mapperList.contains(sqlBaseEntity)) {
      _mapperList.add(sqlBaseEntity);
    }
  }

    ///获取数据库
  Future<Database> getDataBase() async {
    if (_database == null) {
      await initData();
    }
    return _database!;
  }

    ///关闭数据库
  Future<void> close() async {
    _database?.close();
    _database = null;
  }
}
