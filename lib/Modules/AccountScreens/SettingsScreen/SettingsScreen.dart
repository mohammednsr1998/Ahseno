import 'package:designapp/Shared/Components.dart';
import 'package:designapp/Shared/Style.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> settingsItems=[
      "معلومات شخصية",
      "حذف الحساب",
      "لغة التطبيق",
    ];
    List<String> settingItemDescribtion=[
      "اسم . البريد الأكتروني",
      "حذف الحسابك و معلوماتك",
      "العربية"
    ];




    return Directionality(
      textDirection:TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: defaultAppBar(
            title: "إعدادات",
            context:context
        ),
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 600,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context,index){
                      return  Card(
                        elevation: 5,
                        child: ListTile(
                            onTap: (){
                              switch(index){
                                case 0 :print("0");
                                         break;
                                case 1: print("1");
                                         break;
                                case 2: print("2");
                                        break;
                              }
                            },
                            title: Text(settingsItems[index]),
                            subtitle: Text(
                              settingItemDescribtion[index],
                              style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.CustomGrey
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 25,
                              color: AppColors.CustomBlue,
                            )
                        ),
                      );
                    },
                    separatorBuilder: (context,index){
                        return  const SizedBox(height: 10,);
                    },
                    itemCount: settingsItems.length
                ),
              ),
              const Spacer(),
              DefaultButton(
                  Function: (){

                  },
                  ButtonText: "تسجيل خروج",
                  hexColor: "#ff5c33",

              )
            ],
          ),
        )
      ),
    );
  }
}
