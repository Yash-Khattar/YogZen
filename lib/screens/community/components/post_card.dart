import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';

class PostCard extends StatefulWidget {
  final String postImage;
  final String desc;
  const PostCard({Key? key, required this.postImage, required this.desc})
      : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 16),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        child: Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Colors.white54,
                                  ),
                        backgroundColor: kdarkBlue,
                        radius: 26,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nidhi Goyal',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '1d ago',
                          style: TextStyle(color: kblackSubHeading),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: kblackSubHeading,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  width: double.infinity,
                  height: 280,
                  decoration: const BoxDecoration(
                      color: kdarkBlue,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: Image.asset(
                      widget.postImage,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nidhi : ',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Expanded(
                    child: Text(
                      'This is a sample description of the post!',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      icon: Icon(
                        isLiked
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: isLiked ? Colors.red : kblackSubHeading,
                      ),
                    ),
                    const Text('4K'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: kblackSubHeading,
                      ),
                    ),
                    const Text('2K'),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isSaved = !isSaved;
                    });
                  },
                  icon: Icon(
                    isSaved ? Icons.bookmark : Icons.bookmark_border_outlined,
                    color: isSaved ? Colors.yellow : kblackSubHeading,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
