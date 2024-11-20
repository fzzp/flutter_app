// 基本类型和变量

// 内置数据类型 (11个) 看起来相对比较少
// 如：Strings、Numbers、Booleans、Functions、Lists、Sets、Maps、Records...
// https://dart.cn/language/built-in-types/

// 导包：
// import 'dart:html';
// import 'dart:html' as xxx; 指定命名空间
// import 'dart:html' deferred as xxx; 延迟加载
// 需要使用库是，手动加载  await xxx.loadLibrary();这里采用async、await 用法，和js类似。


// 这里也可以设定一个返回类型，在恰当的时候return
int main() {
  // 自动识别类型
  var i = 1; // int
  var f = 1.0; // double

  // 声明类型
  String name = "Bob"; 
  String x;
  x = "xxx";

  const pi = 3.14; // 常量不能被再次修改

  var one = int.parse("1");
  print(one);

  // NOTE: 运行时，会报错，编译不通过
  // var two = double.parse("a");

  var two = double.tryParse("a"); // 非数字解析会得到一个null 
  if (two == null){
    print("解析twos失败,无效字符");
    // 先注释，执行后面测试
    // return 1;
  }
  print(two);

  // 和js差不多
  String ss = 3.14159.toStringAsFixed(2);
  print(ss);

  // String 可以使用 单引号和双引号
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  // 获取运行时类型
  print("s4 runtimeType: ${s4.runtimeType}"); // String

  // 查看String类型，更多方法，通过 xxx. 查看就行，和其他语言提供的方法，大同小异

  var s5 = "hi世界";
  print(s5.length); // length 获取的就是字符个数

  
  String lastName;
  // print("lastName: ${lastName}"); // 编译不通过，不赋值，不能使用

  // 如何定义一个可以为空（null）的变量？
  String ? firstName; // 可空变量默认初始化为 null；你不能在可空类型的表达式上访问属性或调用方法。
  print("lastName: ${firstName}");
  
  print("->>> ${firstName?.contains('1')}");
  print("firstName == null ? ${firstName == null}"); // true

  // ?? 用法，类是js语法
  print(firstName??"firstName 为 null");

  // 动态类型
  Object obj = 100;
  obj = "test";
  print(obj);
  obj = true;

  print(obj.toString());
  print(obj.runtimeType);

  // 终值 final
  final String fname;
  fname = "只允许设置一次";


  // 数组, 可有重复项
  List<String> arr = ["aaa", "bbb", "ccc", "ddd", "aaa"];

  print(arr);

  print(arr[0]);

  // Set，每项都是要唯一的
  Set<String> unqArr = {"aa", "bb"};
  print(unqArr);

  // Map
  var person = {
    name: "zhansan",
    10: 'helium',
  };

  person["name"] = "lisi";
  print(person["name"]);

  print(person["10"]); // null
  print(person[10]); // helium


  return 0;
} 