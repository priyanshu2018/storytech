import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:storytech/constants/constant.dart';

class HomePage extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf4f5f7),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:25.0,right: 15,left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 10,left: 10),
                  height: 40,
                  width: MediaQuery.of(context).size.width*.7,

                  decoration: BoxDecoration(
                      color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 15,
                    )],
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: TextField(
                    controller: _textEditingController,

                    keyboardType: TextInputType.text,
                    onEditingComplete: (){
                      _textEditingController.clear();

                    },

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),

                        hintText: "Search Job",
                        suffixIcon: Icon(Icons.search,color: Colors.grey.shade400,),


                    ),

                  ),
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    Icon(Icons.filter_list,size: 30,color: Colors.black,),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          color: Color(0XFF489bfb)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:15,right: 15,left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text("Featured Jobs",
                style: TextStyle(fontSize:MediaQuery.of(context).size.width*.07,color: Colors.black87,fontFamily: "oswald"),),
              Text("SEE ALL",style: TextStyle(fontSize: 12,color: Color(0XFF63aefc),fontWeight: FontWeight.bold))
            ],),
          ),

          Container(

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width*.55,
            child: Swiper(
              itemBuilder: (BuildContext context,int index){
                return Center(
                  child: Container(
                    padding: EdgeInsets.all(20),

                    height: MediaQuery.of(context).size.width*.45,

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [BoxShadow(
                        color: Colors.grey.shade300,
                        offset:Offset(10.0, 10.0),
                        blurRadius: 10,

                      )],

                      gradient: LinearGradient(
                        colors: [
                          featuredJobs[index].leftGradient,
                          featuredJobs[index].rightGradient

                        ],
                        begin:Alignment.bottomLeft,
                        end: Alignment.topRight
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(featuredJobs[index].organizationName,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*.03),),
                            Icon(Icons.favorite_border,color: featuredJobs[index].textColor,)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(featuredJobs[index].field,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*.055,fontWeight: FontWeight.bold,),),
                            Text(featuredJobs[index].designation,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*.055,fontWeight: FontWeight.bold,)),
                          ],
                        ),

                        Text("${featuredJobs[index].location}  |  ${featuredJobs[index].duration}  |  ${featuredJobs[index].salary}",style: TextStyle(color: featuredJobs[index].textColor,fontSize: MediaQuery.of(context).size.width*.04),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 16,

                                      backgroundColor:featuredJobs[index].textColor ,
                                      child: CircleAvatar(
                                        radius: 13,
                                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQhhklLpQnJpmdcRWm07dxiiIp22D9ZaFlhzNF5S7EMPxEinocq&usqp=CAU') ,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:26.0),
                                      child: CircleAvatar(
                                        radius: 16,

                                        backgroundColor:featuredJobs[index].textColor ,
                                        child: CircleAvatar(
                                          radius: 13,
                                          backgroundImage: NetworkImage("https://i.ytimg.com/vi/7Xu_s1YJhyg/maxresdefault.jpg") ,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:52.0),
                                      child: CircleAvatar(
                                        radius: 16,

                                        backgroundColor:featuredJobs[index].textColor ,
                                        child: CircleAvatar(
                                          radius: 13,
                                          backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text("  ${featuredJobs[index].members}",style: TextStyle(color: featuredJobs[index].textColor,fontSize: MediaQuery.of(context).size.width*.03),)
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 60,

                              child: RaisedButton(
                                padding: EdgeInsets.only(right:3,left:3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                   ),
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Text("APPLY",
                                    style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                );
              },
              itemCount: featuredJobs.length,
              viewportFraction: 0.8,
              scale: .8,
              loop: false,
//                pagination: new SwiperPagination(),
//                control: new SwiperControl(),
            ),
          ),

          Container(height: 2,width: MediaQuery.of(context).size.width-50,color: Colors.grey.shade300,),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Top Companies",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width*.07,color: Colors.black87,fontFamily: "oswald"),),
                Text("SEE ALL",style: TextStyle(fontSize: 12,color: Color(0XFF63aefc),fontWeight: FontWeight.bold))
              ],),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15,left: 15,bottom: 10),
              child: GridView.builder(
                  itemCount: topCompanies.length,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 30.0,
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.width*.25,
                            width: MediaQuery.of(context).size.width*.25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Colors.grey.shade300,blurRadius: 10
                              )],
                              image: DecorationImage(
                                image: topCompanies[index].logo,
                                fit: BoxFit.fill
                              ),


                            ),


                          ),
                        ),
                        SizedBox(height: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(topCompanies[index].name,style: TextStyle(color: Colors.black87,fontSize: MediaQuery.of(context).size.width*.04,fontWeight: FontWeight.bold),),
                            Text(topCompanies[index].location,style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*.03),)



                          ],
                        )
                      ],
                    );
                  })

            ),
          )
        ],
      ),
    );
  }
}
