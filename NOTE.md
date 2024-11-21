
安装使用 fvm 管理 Flutter SDK 版本。 

- 检查flutter
`fvm flutter doctor`

- 同意协议解决部分问题
`fvm flutter doctor --android-licenses`

- 安装项目依赖
`fvm flutter pub get`

    执行 pub get 依赖报错的话，使用管理员打开cmd,执行fvm flutter pub get 即可。
    错误信息：
    ```text
    Pub failed to delete entry because it was in use by another process.
    This may be caused by a virus scanner or having a file
    in the directory open in another application.
    ```

启动项目一直卡在 Running Gradle task 'assembleDebug' 解决方案：

    cd 到 Flutter 项目 android 目录

    1. 清理 gradlew clean
    2. 构建 gradlew build
    3. 关闭防火墙

    重新启动即可。

### focus
当一切都准备就绪后，如何在VS Code开发Flutter项目？
 
    - 启动模拟器，在VSCode底部选择要启动的模拟器
    - 在项目根目录下，运行`flutter run`运行时，会自动关联模拟器
    - 看提示，热更新按R即可 



[Flutter 实战](https://book.flutterchina.club/)


Dart函数声明如果没有显式声明返回值类型时会默认当做dynamic处理，注意，函数返回值没有类型推断。



## 对比前端HTML、JS、CSS学习Flutter

1. Future <=> Promise

