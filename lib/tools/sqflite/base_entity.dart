import 'package:emoti/packages.dart';
import 'package:emoti/tools/sqflite/data_base_tool.dart';

abstract class SqlBaseEntity {
  SqlBaseEntity() {
    DataBaseTool().addEntity(this);
  }

  ///表名称
  String tableName();

  ///表结构
  String tableCreateSqlString();

  ///更新数据
  String updateSqlString(int oldVersion, int newVersion);

  ///获取
  Future<Database> getSql() async {
    return await DataBaseTool().getDataBase();
  }
}
