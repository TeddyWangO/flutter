import 'package:flutter/material.dart';

class Chouti extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Teddy Wang'),
            accountEmail: Text("wangqidi@sunlinle.cn"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img0.baidu.com/it/u=1217304799,3113310756&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1680368400&t=cc1d422d622c41fba9febe1fc64200e0'),
            ),
            decoration: BoxDecoration(//添加背景颜色
                color: Colors.amberAccent,
                image: DecorationImage(image: NetworkImage('https://bpic.588ku.com/ad_diversion/22/11/25/0767246cebd766dc5635aa60344f7202.png!/fw/320/unsharp/true/compress/true'),
                  fit: BoxFit.cover,
                  // colorFilter: ColorFilter.mode(color, blendMode),//滤镜
                )
            ),
          ),
          //   const DrawerHeader(
          //       child:Text("HEADER")
          //       decoration: BoxDecoration(
          //       color: Colors.grey
          //   ),
          // ),
          ListTile(
            title: const Text("message", textAlign: TextAlign.right),
            trailing: const Icon(
              Icons.message,
              color: Colors.cyanAccent,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text("favorite", textAlign: TextAlign.right),
            trailing: const Icon(
              Icons.favorite,
              color: Colors.cyanAccent,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text("settings", textAlign: TextAlign.right),
            trailing: const Icon(
              Icons.settings,
              color: Colors.cyanAccent,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}