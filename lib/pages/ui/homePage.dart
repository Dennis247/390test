import 'package:flutter/material.dart';
import 'package:labs_test/pages/ui/detailsPage.dart';
import 'package:labs_test/pages/widgets/progressbarWidget.dart';
import 'package:labs_test/utils/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Costant.primaryColor,
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Icon(Icons.notifications, color: Costant.lightTextColor),
                  ],
                ),
              ),
              SizedBox(
                height: appSize.height * 0.02,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Hello,",
                                  style: TextStyle(
                                    color: Costant.lightTextColor,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Dennis Osagiede",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: appSize.height * 0.02,
                          ),
                          Container(
                            height: appSize.height * 0.45,
                            child: PageView.builder(
                              itemCount: 2,
                              itemBuilder: (context, id) {
                                return MyContainer(
                                    isActive: id == 0 ? true : false,
                                    containerName:
                                        id == 0 ? "DropBox" : "Google Drive");
                              },
                            ),
                          ),
                          SizedBox(height: 15.0),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Co-Owners",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Costant.lightTextColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 15.0),
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Costant.circleColorList[
                                                            index]),
                                                shape: BoxShape.circle,
                                              ),
                                              padding: EdgeInsets.all(5.0),
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 9),
                                              child: InkWell(
                                                onTap: () {},
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                    Costant.profilePictureList[
                                                        index],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 11.0),
                                      Container(
                                        padding: EdgeInsets.all(3.0),
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            shape: BoxShape.circle),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Icon(Icons.add),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: appSize.height * 0.03),
                                Text(
                                  "Last Files",
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Costant.lightTextColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 9.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: appSize.height * 0.5,
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
                                  Icon(Icons.picture_as_pdf),
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
                                                text: "BrandonBook.",
                                                style: TextStyle(
                                                    color: Color(0xff333333),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              TextSpan(
                                                text: "PDF",
                                                style: TextStyle(
                                                  color: Costant.lightTextColor,
                                                  fontSize: 18,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "DropBox/Projects/Folder2/BrandonBook.pdf",
                                          style: TextStyle(
                                              color: Costant.lightTextColor),
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
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final bool isActive;
  final String containerName;
  const MyContainer({
    Key key,
    this.isActive,
    this.containerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(
                  isActive: isActive,
                )));
      },
      child: Container(
        margin: isActive ? EdgeInsets.only(bottom: 5) : EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(25),
              margin: isActive
                  ? EdgeInsets.only(bottom: 25, top: 25, left: 15, right: 15)
                  : EdgeInsets.only(bottom: 15, top: 25, left: 15, right: 15),
              decoration: BoxDecoration(
                color: isActive ? Costant.secondaryColor : Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: isActive ? 13.0 : 5.0,
                    offset: Offset(0, isActive ? 13 : 5.0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Icon(
                              Icons.folder_open,
                              color: isActive ? Colors.white54 : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Icon(
                            Icons.create_new_folder,
                            color: isActive ? Colors.white54 : Colors.black,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Icon(
                            Icons.storage,
                            color: isActive ? Colors.white54 : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    containerName,
                    style: TextStyle(
                      color: isActive ? Colors.white : Colors.black87,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyProgressBar(isActive: isActive),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 45,
              child: Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.all(9.0),
                child: Image.network(isActive
                    ? "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Dropbox_Icon.svg/1101px-Dropbox_Icon.svg.png"
                    : "https://cnet4.cbsistatic.com/img/jDFGrEL4GD0FRJYMAZBB9C9mJ0o=/940x0/2016/04/15/83350f75-d5fe-4b92-bd3d-df904bd51158/google-drive-icon.jpg"),
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
            ),
          ],
        ),
      ),
    );
  }
}
