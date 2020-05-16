import 'package:flutter/material.dart';
import 'package:storytech/model/feature_jobs.dart';
import 'package:storytech/model/top_companies.dart';

List topCompanies=[
  TopCompanies(logo: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSi1wI2K-88VH6KiI0XyI0jmQ_0FMt4ZjYsY5Ca0dxoPPPNjoR8&usqp=CAU",scale: 5),location: "India",name: "Animasia"),
  TopCompanies(logo: NetworkImage("https://pngimage.net/wp-content/uploads/2018/05/background-logo-png-5.png",scale: 5),location: "London",name: "WebBox"),
  TopCompanies(logo: NetworkImage("https://www.freeiconspng.com/uploads/flame-logo-png-30.png",scale: 5),location: "New York",name: "KashWare"),
  TopCompanies(logo: NetworkImage("https://cdn.freebiesupply.com/logos/large/2x/ideal-logo-png-transparent.png",scale: 5),location: "Japan",name: "Tradexa"),
  TopCompanies(logo: NetworkImage("https://www.freelogodesign.org/Content/img/logo-samples/bakary.png",scale: 5),location: "China",name: "CinemaFX"),
  TopCompanies(logo: NetworkImage("https://designermag.org/wp-content/uploads/2013/10/TransparencyLogo-Design.jpg",scale: 5),location: "London",name: "Transchamp"),
  TopCompanies(logo: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/5/53/Wikimedia-logo.png",scale: 5),location: "Sudan",name: "CRAW Security"),
  TopCompanies(logo: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR7IP0MmeFhEjs5aRfJmCI93Wi6MvskUFJdWhqdLzu4tByDLg-Y&usqp=CAU",scale: 5),location: "Remote",name: "Intellify"),
  TopCompanies(logo: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSCMqYhXtN9bltg3OhdWzqX3A-TYOlfplRP7MWcg7VksKxZ8cGe&usqp=CAU",scale: 5),location: "Russia",name: "Expanrr"),
  TopCompanies(logo: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR1_AS_kTO0PxwGJbK8Vu1_Ri__0lkf5hZRWd3bOGwGSgqDH1AF&usqp=CAU",scale: 5),location: "South Korea",name: "Fame"),
  TopCompanies(logo: NetworkImage("https://clipartmag.com/images/camera-logo-png-25.png",scale: 5),location: "London",name: "Devkraft"),
  TopCompanies(logo: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQohMNI6eP9qI14h0tlNyThcdAwvXY06tim8ff5m9rLhMLmpvzv&usqp=CAU",scale: 5),location: "Canada",name: "UpTricks")


];

List featuredJobs =[
  FeatureJobs(
    organizationName: "Royal Cyber",field: "Mobile Application",designation: "Designer",location: "Remote",duration: "Full Time",salary: "\$46k Yr",members: "+2.8k",rightGradient: Color(0XFFbc68fe),leftGradient: Color(0XFF815dff),textColor: Color(0XFFd2adfc)



  ),
  FeatureJobs(
    organizationName: "Weebly Tech",field: "Web Application",designation: "Backend Developer",location: "London",duration: "Part Time",salary: "\$34k Yr",members: "+3.2k",rightGradient: Color(0XFF8bc2fa),leftGradient: Color(0XFF5a80ff),textColor: Color(0XFF8EDCF6)

  ),
  FeatureJobs(
    organizationName: "Weebly Tech",field: "Software Engineer",designation: "Testing",location: "Canada",duration: "Full Time",salary: "\$29k Yr",members: "+5.6k",rightGradient: Color(0XFFA5DE61),leftGradient: Color(0XFF5CA82F),textColor: Color(0XFFC9F7CE)

  )


];


