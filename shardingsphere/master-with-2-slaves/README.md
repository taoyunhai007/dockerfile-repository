## 一主二从的 MySQL 集群

该 docker 环境会启动三台 MySQL，一主二从，端口分别为 `13306`,`13307`,`13308`

因为 shardingsphere 支持建表语句，所以 一主二从的环境也分为两种

  - with-sql-script : 启动容器后，会初始化建表语句以及数据初始化的语句，shardingsphere 的 demo 可以直接进行 CRUD 操作
  - without-sql-script : 没有初始化脚本，shardingsphere 的 demo 需要在程序中先执行建表语句
