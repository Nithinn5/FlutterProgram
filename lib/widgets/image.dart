import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Thor Image'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 400,
          width: 350,
          child: CachedNetworkImage(imageUrl: 'https://th.bing.com/th/id/OIP.Cs2jLp5Tz2HWOIatoG4mYwHaEK?w=250&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
            imageBuilder: (context,imageProvider)=>Container(
              decoration: BoxDecoration(
                image:DecorationImage(image: imageProvider,fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn)),

              ),
            ),
            placeholder: (context,url)=>Center(child: CircularProgressIndicator()),
            errorWidget: (context,url,error)=>Icon(Icons.error),

          ),),

          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       blurRadius: 10,color: Colors.black,spreadRadius: 5.0
          //     )
          //   ],
          //   image: DecorationImage(image: AssetImage("assets/thor.png"),
          //       fit: BoxFit.cover),
          //   color: Colors.red,
          //   borderRadius: BorderRadius.circular(20),
          // ),
        ),
      );
  }
}

