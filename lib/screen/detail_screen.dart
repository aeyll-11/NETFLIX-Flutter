import 'package:flutter/material.dart';
import 'package:netflix/data/netflix_json.dart';


class VideoDetail extends StatefulWidget {
  const VideoDetail({Key? key,required this.value}) : super(key: key);
  final int value ;
  @override
  _VideoDetailState createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: getAppBar(),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios),),
      actions: [IconButton(onPressed: null, icon: Image.asset('assets/images/profile.png')),],
    );
  }
  Widget getBody(){
  var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(OnlyOnNetflix_json[widget.value]['img_list']))
              ),
            ),
          ),
          Container(
            height: 80,
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(OnlyOnNetflix_json[widget.value]['title_img']))
                ),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0, left: 20),
            child: Container(
              height: 50,
              child: Text(OnlyOnNetflix_json[widget.value]['description'],style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
            ),
          ),
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('With:   ',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                Text(OnlyOnNetflix_json[widget.value]['cast'],style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Genres: ',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
                Text(OnlyOnNetflix_json[widget.value]['genre'],style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),)
              ],
            ),
          )
        ],
      ),
    );    
  }
}

