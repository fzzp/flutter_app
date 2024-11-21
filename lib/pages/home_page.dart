import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

// HomePage 定义首页，并暴露出去
class HomePage extends StatefulWidget {
  // 构造方法
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // 返回状态
    return _HomePageState();
  }
 
}

//  HomePage 作为泛型，_HomePageState 才可以获取 HomePage 的成员变量
// 这是一种命名规范(_XXXState)， _ 下划线是私有的，_HomePageState 仅会被HomePage使用到
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          // Text("这是一段文本"),
          // Text("这是一段文本"),
          // Text("这是一段文本"),
          // flutter_screenutil
          Swiper(itemCount: 3, itemBuilder: (context, index){
            return Container(
              width: double.infinity,
              // 15.r、150.h 依赖 flutter_screenutil 包
              // 一般上下左右就用r,高h,宽w
              margin: EdgeInsets.all(15.r),
              height: 150.h, 
              color: Colors.lightBlue,
            );
          },)
        ],
      ),
    ),
   );
  }

}