import 'package:flutter/material.dart';
import 'package:labs_test/pages/widgets/progressbarWidget.dart';
import 'package:labs_test/utils/constant.dart';

class DetailsPage extends StatelessWidget {
  static final String routeName = "details-page";
  final bool isActive;

  const DetailsPage({Key key, this.isActive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Costant.secondaryColor,
        body: Column(
          children: <Widget>[
            Container(
              height: 151,
              color: Costant.secondaryColor,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.all(9.0),
                          child: Image.network(isActive
                              ? Costant.dropBoxImagelink
                              : Costant.googleImageLink),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5.0,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 13),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                isActive ? "DropBox Cloud" : "Google Drive",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              MyProgressBar(isActive: true),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Costant.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(blurRadius: 13.0, color: Colors.black26),
                  ],
                ),
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Folders",
                            style: TextStyle(
                                fontSize: 21,
                                color: Costant.lightTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            height: 151,
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, id) {
                                return Container(
                                  width: 251,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 5.0),
                                  padding: EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        blurRadius: 9.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Image.network(
                                            isActive
                                                ? Costant.dropBoxImagelink
                                                : Costant.googleImageLink,
                                            height: 51,
                                            width: 51,
                                          ),
                                          Spacer(),
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              Costant.profilePictureList[0],
                                            ),
                                          ),
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              Costant.profilePictureList[1],
                                            ),
                                          ),
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              Costant.profilePictureList[2],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        "${Costant.foldersList[id]}",
                                        style: TextStyle(
                                          color: Color(0xff333333),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 21,
                                        ),
                                      ),
                                      Text(
                                        "Created on: 0${id + 2}/07/2019",
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Last Files",
                            style: TextStyle(
                                fontSize: 21,
                                color: Costant.lightTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (ctx, id) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xffecf0f3),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.folder,
                                  color: Costant.lightTextColor,
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "${Costant.filesList[id]}",
                                              style: TextStyle(
                                                  color: Color(0xff333333),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 21),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "DropBox/Projects/Folder2/${Costant.filesList[id]}..pdf",
                                        style: TextStyle(
                                            color: Costant.lightTextColor),
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
