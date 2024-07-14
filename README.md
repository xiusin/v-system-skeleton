# V System Skeleton
This project uses the new V language to drive the implementation of basic management system modules, including login, personnel management, permission management, menu management, login log, cache management and dictionary management. It adopts a modern management interface, uses vue3 + ts + antd to build the front-end page, the page is more beautiful and the performance is more excellent. The project has cross-platform characteristics and can build, deploy and release your project on any platform. The V language driver makes the project have high performance, fast compilation speed and faster response speed. Continuous optimization of code structure makes the project more concise and easier to use. The built-in encapsulated query builder can query data more elegantly.

# Project Background
The management system is an important part of the informatization construction of enterprises. It provides enterprises with efficient, stable and secure management means. However, most of the management systems currently on the market adopt traditional technical architectures, which have problems such as performance bottlenecks, low development efficiency and insufficient security. Therefore, we have developed a high-performance and modern management system based on the new V language.

# Functional Features
## Login Module
Provide user login function to ensure system security. Support username password, SMS verification login method, while supporting remember password, automatic login, logout and other functions.

## Personnel Management
Support adding, deleting, modifying and querying users in the system. And support user role assignment, convenient for permission management.

## Permission Management
Implement permission control of the system, subdivided to the button level, to ensure the security of the system. Support permission inheritance and permission group management, convenient for administrators to manage.

## Menu Management
Provide menu management functions for convenient and quick navigation of users. Support menu classification, menu sorting and menu permission control and other functions.

## Login Log
Record user login information for administrators to monitor the system. Support query, export login log and automatic log cleanup features for administrators to log management.

## Cache Management
Provide cache cleanup features to ensure the smooth running of the system. Support cache cleanup, cache monitoring and cache locking functions for administrators to cache management.

## Dictionary Management
Support adding, deleting, modifying and querying dictionaries used in the system, convenient for business developers to use. Support dictionary classification, dictionary sorting and dictionary caching to improve system performance.

## Modern Management Interface
Use vue3 + ts + antd to build the front-end page, the page is beautiful, the performance is excellent, and the interaction is friendly. Adopt responsive design to support access from various devices.

## Cross Platform
Can build, deploy and release your project on any platform, convenient for cross-team collaborative development and deployment operation and maintenance. Support mainstream operating systems such as Linux, Windows, and MacOS.

## High Performance
Driven by the V language, fast compilation and response ensure high performance and low latency of the system. Using the `Very` framework and `Sqlite3` database supports high concurrency and high availability.

## Continuous Iteration
Continuously optimize the code structure to make the project more concise, easier to use and more scalable. The built-in encapsulated query builder can query data more elegantly. We will continue to iterate to provide you with better products and services.

# Technical Architecture
- Backend: V language + Very framework + Sqlite3 database
- Front end: Vue3 + TypeScript + Ant Design Vue
# Quick Start
## Environmental Requirements
- V language compiler
- Node.js
- sqlite3
## Installation Steps
### Clone the project code locally:
```shell
git clone https://github.com/xiusin/v-system-skeleton.git
```
Enter the project directory and install the front-end dependencies:

```shell
cd typescript-ant-design-vue3
yarn
```

Build the front-end page:

```shell
yarn prod
```

Return to the root directory of the project and install the back-end dependencies:

```shell
cd ../src
v install xiusin.very

v -d net_blocking_sockets -prod `pwd` -o v-system-skeleton

# v -prod . -o v-system-skeleton If `.` is used directly as the current directory, the compilation cannot pass.
```

Start the project:
```shell
./v-system-skeleton
```
Visit the project, open the browser, and enter the following address:
```shell
http://localhost:8089/manages/#/

Account: admin
Password: 123456
```

# Contributors
Author: @xiusin

# License
This project uses the MIT license.

# Summary
This project is driven by the V language and adopts a modern technical architecture. It has the characteristics of high performance, modernization and ease of use. It can be used in enterprise backend management systems, SAAS platforms, IoT management platforms and other scenarios. We will continue to iterate to provide you with better products and services. If you have any questions or suggestions, please feel free to raise them.


