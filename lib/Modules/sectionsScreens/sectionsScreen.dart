import 'package:designapp/Modules/ShopCart/shopCartScreen.dart';
import 'package:designapp/Modules/sectionsScreens/describtionScreen.dart';
import 'package:designapp/Shared/Components.dart';
import 'package:designapp/Shared/Cubit/cubit.dart';
import 'package:designapp/Shared/Style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class SectionsScreen extends StatefulWidget {
  const SectionsScreen({Key? key}) : super(key: key);

  @override
  State<SectionsScreen> createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: defaultAppBar(
            title: "خدمات التبرع",
            icon: Icons.shopping_cart_outlined,
            leadingicon: null,
            buttonfunction: (){
              NavgatetoPage(context: context, page: ShopCartScreen());
            }
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                child: TabBar(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white),
                    isScrollable: false,
                    labelStyle: GoogleFonts.cairo(fontSize: 15),
                    labelColor: AppColors.CustomBlue,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    indicatorColor: AppColors.CustomBlue,
                    indicatorWeight: 2,
                    indicatorPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    unselectedLabelColor: AppColors.CustomGrey,
                    tabs: const [
                      Tab(
                        text: 'المؤونة',
                      ),
                      Tab(
                        text: 'المشاريع الخيرية',
                      ),
               /*       Tab(
                        text: 'مسجونين',
                      ),
                      Tab(
                        text: 'الكفالات',
                      ),  */
                      Tab(
                        text: 'المديونين',
                      ),
                    ]
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  //Default list of items
                      ListView.separated(
                          itemBuilder: (context,index)=> defaultCardItem(
                              image: "Assets/images/SliderImages/muslims-reading-from-quran.jpg",
                              itemTitle: " صيانة اكادمية تحفيط قران",
                              leftnumber: "192,493",
                              percent: 0.3,
                              percentvalue: "30",
                              percentcolor: "#45C4B0",
                              function: (){
                                 DefaultPaymentBottomSheet(context);
                                },
                              function2: (){
                              },
                              ontab: () {
                                NavgatetoPage(context: context, page: const DescribtionScreen());
                              },
                              onlongpress: () async {
                                 await Share.share("تبرع عبر تطبيق احسينو");
                              }
                          ),
                          separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                          itemCount: 10
                      ),
                      ListView.separated(
                          itemBuilder: (context,index)=> defaultCardItem(
                              image: "Assets/images/SliderImages/muslims-reading-from-quran.jpg",
                              itemTitle: " صيانة اكادمية تحفيط قران",
                              leftnumber: "192,493",
                              percent: 0.3,
                              percentvalue: "30",
                              percentcolor: "#45C4B0",
                              function: (){

                              },
                              function2: (){

                              },
                              ontab: () {
                                NavgatetoPage(context: context, page: const DescribtionScreen());
                              },
                              onlongpress: () async {
                                await Share.share("تبرع عبر تطبيق احسينو");
                              }
                          ),
                          separatorBuilder: (context,index)=> const SizedBox(height: 10,),
                          itemCount: 10
                      ),
                      ListView.separated(
                          itemBuilder: (context,index)=> defaultCardItem(
                              image: "Assets/images/SliderImages/muslims-reading-from-quran.jpg",
                              itemTitle: " صيانة اكادمية تحفيط قران",
                              leftnumber: "192,493",
                              percent: 0.3,
                              percentvalue: "30",
                              percentcolor: "#45C4B0",
                              function: (){

                              },
                              function2: (){

                              },
                              ontab: () {
                                NavgatetoPage(context: context, page: const DescribtionScreen());
                              },
                              onlongpress: () async {
                                await Share.share("تبرع عبر تطبيق احسينو");
                              }
                          ),
                          separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                          itemCount: 10
                      ),
                      ListView.separated(
                          itemBuilder: (context,index)=> defaultCardItem(
                              image: "Assets/images/SliderImages/muslims-reading-from-quran.jpg",
                              itemTitle: " صيانة اكادمية تحفيط قران",
                              leftnumber: "192,493",
                              percent: 0.3,
                              percentvalue: "30",
                              percentcolor: "#45C4B0",
                              function: (){

                              },
                              function2: (){

                              },
                              ontab: () {
                                NavgatetoPage(context: context, page: const DescribtionScreen());
                              },
                              onlongpress: () async {
                                await Share.share("تبرع عبر تطبيق احسينو");
                              }
                          ),
                          separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                          itemCount: 10
                      ),
                      ListView.separated(
                          itemBuilder: (context,index)=> defaultCardItem(
                              image: "Assets/images/SliderImages/muslims-reading-from-quran.jpg",
                              itemTitle: " صيانة اكادمية تحفيط قران",
                              leftnumber: "192,493",
                              percent: 0.3,
                              percentvalue: "30",
                              percentcolor: "#45C4B0",
                              function: (){

                              },
                              function2: (){

                              },
                              ontab: () {
                                NavgatetoPage(context: context, page: const DescribtionScreen());
                              },
                              onlongpress: () async {
                                await Share.share("تبرع عبر تطبيق احسينو");
                              }
                          ),
                          separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                          itemCount: 10
                      ),
                ]),
              ),
            ],
          ),
        )
    );
  }
}
