

class Meme{
  String id;
  String user;
  String userPic;
  String memeTitle;
  String songName;
  String likes;
  String comments;
  String url;


  Meme({this.id,
      this.user,
      this.userPic,
      this.memeTitle,
      this.songName,
      this.likes,
      this.comments,
      this.url});

  Meme.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    user = json['user'];
    userPic = json['user_pic'];
    memeTitle = json['meme_title'];
    songName = json['song_name'];
    likes = json['likes'];
    comments = json['comments'];
    url = json['url'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    data['user_pic'] = this.userPic;
    data['video_title'] = this.memeTitle;
    data['song_name'] = this.songName;
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['url'] = this.url;
    return data;
  }

}