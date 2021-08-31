import 'package:flutter/material.dart';
import 'package:netflix/widget/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  // double _scrollOffset = 0.0;
  // ScrollController _scrollController;

  // @override
  // void initState() {
  //   _scrollController = ScrollController()
  //     ..addListener(() {
  //       setState(() {
  //         _scrollOffset = _scrollController.offset;
  //       });
  //     });
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.cast),
        onPressed: () => print('Cast'),
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CustomAppBar(),//scrollOffset: _scrollOffset
      ),
      body: CustomScrollView(
        // controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: ContentHeader(featuredContent: atlaContent);
              
            ),
          
        ],
      ),
    );
  }
}
