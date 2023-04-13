import 'package:flutter/material.dart';
import '../demo_data/hourse.dart';

class ShowDemo extends StatelessWidget {
  final RoomListItemData roomListItemData;
  ShowDemo({required this.roomListItemData});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('${roomListItemData.id}'),
        elevation: 2.0,
      ),
      body: Column(
        children: [
          Image.network(roomListItemData.imageUrl),
          Container(
            padding: EdgeInsets.all(32.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${roomListItemData.title}",style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(height:20,),
                Text("${roomListItemData.subTitle}",style: Theme.of(context).textTheme.titleMedium,),
                SizedBox(height:10,),
                Text("${roomListItemData.tags}",style: Theme.of(context).textTheme.titleMedium,),
                SizedBox(height:10,),
                Text("${roomListItemData.price}"+"元/月",style: Theme.of(context).textTheme.titleMedium,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
