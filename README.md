# Hertz101

一个学习项目

## 简介

使用 kitex 框架，实现了

* rpc 调用 (kitex)
* hertz 作为 facade 层
* 服务注册与发现（consul）
* 配置动态加载（viper + consul）
* docker 镜像
* helm 模板 (manifest 分支)
* k8s 部署
* cicd 流水线
* GitOps 部署（argocd）

## 开发一个模块的流程

1. 编写 idl 文件
2. Makefile 中，从已有的模块复制一份，修改模块名
3. 使用 cwgo 工具生成代码（运行刚刚写的 Makefile）
4. 定义数据库 model
5. 创建 cmd/migrate/migrate.go 文件，编写迁移代码（参见 gorm）
6. 运行 cmd/migrate/migrate.go，创建数据库表
7. 创建 cmd/gorm_gen/gen.go 文件，编写业务 sql（使用注释，参见 gorm gen）
8. 运行 cmd/gorm_gen/gen.go，生成数据库操作代码
9. 修改 config/config.go，改成自己的配置（viper+consul）
10. 修改 日志配置，改成自己的配置（直接打印到 std）
11. 修改 服务端口，改成一个未被占用的端口（便于在本地测试）
12. 修改 biz/dal/mysql/mysql.go，改成自己的dsn，并初始化 gen 的 Q 对象
13. 到 biz/service 下完善自己的业务逻辑
14. 编写 dockerfile

## 一次部署的流程

1. 代码推送到 main 分支
2. 构建镜像并推送到镜像仓库（cicd，下同）
3. 把镜像 tag 更新到 manifest 仓库中的 values.yaml
4. ArgoCD 自动同步
5. 部署完成
