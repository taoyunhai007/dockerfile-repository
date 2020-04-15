## 一主二从的 MySQL 集群

该 docker 环境会启动三台 MySQL，一主二从，端口分别为 `13306`,`13307`,`13308`

启动后，会创建 `demo_ds` schema，建表语句以及对数据的 CRUD 需要在 shardingsphere 的 demo 通过程序执行

需要注意的是 :

>1. 修改了 conf 下 `.env` 中的 root 用户密码，也同样需要修改 `resources` 目录下两个 sql 文件中的密码
>2. slave 启动后，主从同步连接需要点时间。当在 slave 上执行 SQL `show slave status \G;`，显示 `Slave_IO_Running` 跟 `Slave_SQL_Running` 都为 YES，slave 才会同步数据
