void main(List<String> args) {
  print(args.length); // 0
  print("args: $args"); // []

  Future.wait([
    Future.delayed(Duration(seconds: 4), () {
      return "hello";
    }),
    Future.delayed(Duration(seconds: 3), () {
      return "world";
    }),
  ]).then((result) {
    print(result);
  }).catchError((e) {
    print(e);
  });

  task1();
  task2();
}

Future<String> login(String uName, String pwsd) {
  return Future.delayed(Duration(seconds: 2), () {
    return "100";
  });
}

Future<String> getUserInfo(String id) {
  return Future.delayed(Duration(seconds: 2), () {
    return "用户信息";
  });
}

// 使用 then 语法递归
task1() {
  login("jack", "123").then((id) {
    getUserInfo(id).then((res) {
      print("task1: $res");
    });
  });
}

// 使用 async/await 解决回调地狱
task2() async {
  try {
    String id = await login("jack", "123");
    String info = await getUserInfo(id);
    print("task2: $info");
  } catch (e) {
    print(e);
  }
}
