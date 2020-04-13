## 一主二从的 MySQL 集群

该 docker 环境会启动三台 MySQL，一主二从，端口分别为 `13306`,`13307`,`13308`

因为 shardingsphere 支持建表语句，所以 一主二从的环境也分为两种

  - with-sql-script : 启动容器后，会初始化建表语句以及数据初始化的语句，shardingsphere 的 demo 可以直接进行 CRUD 操作
  - without-sql-script : 没有初始化脚本，shardingsphere 的 demo 需要在程序中先执行建表语句

需要注意的是 :

>1. 修改了 conf 下 `.env` 中的 root 用户密码，也同样需要修改 `resources` 目录下两个 sql 文件中的密码
>2. slave 启动后，主从同步连接需要点时间，什么时候 slave 上执行 `show slave status \G;`，显示 `Slave_IO_Running` 跟 `Slave_SQL_Running` 都为 YES，才可以同步