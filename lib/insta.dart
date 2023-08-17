import 'package:flutter/material.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Instagram",
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, right: 40),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            Icon(Icons.message, color: Colors.white),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10,right: 5),
                          child: Container(width:80,
                            height: 80,decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.red),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 5),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/volvo.webp'),

                          ),
                        ),

                      ),]),
                      Text("your story"),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10,right: 5),
                          child: Container(width:80,
                            height: 80,decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.red),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 5),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/volvo.webp'),

                            ),
                          ),

                        ),]),
                      Text("name"),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10,right: 5),
                          child: Container(width:80,
                            height: 80,decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.red),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 5),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/volvo.webp'),

                            ),
                          ),

                        ),]),
                      Text("name"),
                    ],
                  ),

                ],
              ),

              Expanded(
                child: ListView(
                  // scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(height:40,width:40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey,),
                        child: CircleAvatar(backgroundImage: AssetImage('images/volvo.webp')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("_volvo_",style: TextStyle(fontWeight:FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200,top: 5),
                          child: Icon(Icons.more_horiz ),
                        )

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 400,
                          width: 340,
                          color: Colors.grey,


                          child: Image.asset('images/volvo.webp',fit: BoxFit.cover,),
                      ),

                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.favorite),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.comment),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.share),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180),
                          child: Icon(Icons.save_alt),
                        ),


                      ],
                    ),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey,),
                            child: CircleAvatar(backgroundImage: AssetImage('images/volvo.webp'),),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey,),
                              child: CircleAvatar(backgroundImage: AssetImage('images/volvo.webp'),),

                            ),
                          ),
                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(bottom: 15),
                       child: Text("Liked by ####### and others"),
                     ),

                    ],
                     ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 15),
                      child: Text("_volvo_ volvo car##",style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text("View comment",style: TextStyle(color: Colors.grey)),

                    Row(
                      children: [
                        Container(height:40,width:40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey,),
                          child: CircleAvatar(backgroundImage: AssetImage('images/volvo.webp')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("_volvo_",style: TextStyle(fontWeight:FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200,top: 5),
                          child: Icon(Icons.more_horiz ),
                        )


                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        width: 340,
                        color: Colors.grey,


                        child: Image.asset('images/volvo.webp',fit: BoxFit.cover,),
                      ),

                    ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.favorite),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.comment),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.share),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Icon(Icons.save_alt),
              ),


            ],
          ),


                    Row(children: [ Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey,),
                            child: CircleAvatar(backgroundImage: AssetImage('images/volvo.webp'),),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey,),
                              child: CircleAvatar(backgroundImage: AssetImage('images/volvo.webp'),),

                            ),
                          ),
                        ],
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text("Liked by ####### and others"),
                      ),


                    ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:15,left: 10),
                      child: Text("_volvo_ volvo car##",style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text("View comment",style: TextStyle(color: Colors.grey)),


                  ],
                ),
              ),

              Row(

                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              Container(color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home,color: Colors.white),
                    Icon(Icons.search,color: Colors.white),
                    Icon(Icons.add_box,color: Colors.white),
                    Icon(Icons.movie_creation_outlined,color: Colors.white),
                    Icon(Icons.circle,color: Colors.white)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
