
class Post {

  final String title;
  final String imageUrl;
  final String id;

  const Post({

    required this.title,
    required this.imageUrl,
    required this.id
  });
}

const List<Post> posts = [
  Post(
       title: '朝阳门南大街 2室1厅 8300元',
       imageUrl: "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu9t1kxj30lo0c7796.jpg",
       id: '11'),
  Post(
      title: '整租 · CBD总部公寓二期 临近国贸 精装修 随时拎包入住',
       imageUrl:
       "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu5s7gcj30lo0c7myq.jpg",
       id: '21' ),
  Post(
      title: '朝阳门南大街 2室1厅 8300元',
       imageUrl:
      "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu9t1kxj30lo0c7796.jpg",
       id: '14' ),
  Post(
      title: '朝阳门南大街 2室1厅 8300元',
      imageUrl:
      "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu9t1kxj30lo0c7796.jpg",
      id: '14' ),
];