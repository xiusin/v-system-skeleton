#  V System Skeleton
该项目使用新语言V驱动，实现了基本的管理系统模块，包括登录、人员管理、权限管理、菜单管理、登录日志、缓存管理和字典管理等。采用现代化管理界面，使用vue3 + ts + antd构建前端页面，页面更美观，性能更卓越。该项目具有跨平台的特性，可以在任意平台构建部署发布您的项目。V语言驱动使得项目具有高性能，编译速度快，响应速度更快。持续迭代优化代码结构，使得项目更精简，更易用，内置封装查询构造器可以更优雅地查询数据。

# 项目背景
管理系统是企业信息化建设的重要组成部分，为企业提供高效、稳定、安全的管理手段。然而，目前市场上的管理系统大多数采用传统的技术架构，存在性能瓶颈、开发效率低下、安全性不足等问题。因此，我们基于新兴的V语言开发了一套高性能、现代化的管理系统。

# 功能特性
## 登录模块
提供用户登录功能，保证系统安全。支持用户名密码、短信验证码登录方式，同时支持记住密码、自动登录、退出登录等功能。

## 人员管理
支持对系统内的用户进行添加、删除、修改和查询等操作。并支持用户角色分配，方便权限管理。

## 权限管理
实现对系统的权限控制，细分到按钮级别，保证系统的安全性。支持权限继承和权限组管理，方便管理员进行管理。

## 菜单管理
提供菜单管理功能，方便用户进行快速导航。支持菜单分类、菜单排序和菜单权限控制等功能。

## 登录日志
记录用户登录信息，方便管理员进行系统监控。支持查询、导出登录日志和自动清理日志功能，方便管理员进行日志管理。

## 缓存管理
提供缓存清除功能，保证系统运行的顺畅性。支持缓存清除、缓存监控和缓存锁定等功能，方便管理员进行缓存管理。

## 字典管理
支持对系统中使用的字典进行添加、删除、修改和查询等操作，方便业务开发人员使用。支持字典分类、字典排序和字典缓存等功能，提高系统性能。

## 现代化管理界面
使用vue3 + ts + antd构建前端页面，页面美观、性能卓越、交互友好。采用响应式设计，支持多种设备访问。

## 跨平台
可在任意平台构建部署发布您的项目，方便跨团队协作开发、部署运维。支持Linux、Windows、MacOS等主流操作系统。

## 高性能
V语言驱动，快速编译及响应，保证系统的高性能、低延迟。采用`Very`框架和`Sqlite3`数据库，支持高并发、高可用性。

## 持续迭代
持续优化代码结构，使得项目更精简、更易用、更具扩展性，内置封装查询构造器可以更优雅地查询数据。我们将持续迭代，为您提供更好的产品和服务。

# 技术架构
- 后端：V语言 + Very框架 + Sqlite数据库
- 前端：Vue3 + TypeScript + Ant Design Vue
# 快速开始
## 环境要求
- V语言编译器
- Node.js
- sqlite3
## 安装步骤
### 克隆项目代码到本地：
```shell
git clone https://github.com/your-username/your-project.git
```
进入项目目录，安装前端依赖：

```shell
cd your-project/client
npm install
```

构建前端页面：

```shell
npm run build
```

返回项目根目录，安装后端依赖：

```shell
cd ../server
v install
```

配置数据库连接信息，打开项目根目录下的 .env 文件，修改以下内容：

```ini
DB_HOST=your-mysql-host
DB_PORT=your-mysql-port
DB_USER=your-mysql-username
DB_PASSWORD=your-mysql-password
DB_DATABASE=your-database-name
```

启动项目：
```shell
v run main.v
```
访问项目，打开浏览器，输入以下地址：
```shell
http://localhost:8080
```

# 贡献者
Author: @xiusin

# 许可证
该项目采用 MIT 许可证。

# 总结
该项目基于V语言驱动，采用现代化技术架构，具有高性能、现代化、易用性等特点。可用于企业后台管理系统、SAAS平台、物联网管理平台等场景。我们将持续迭代，为您提供更好的产品和服务。如有问题或建议，欢迎提出。
