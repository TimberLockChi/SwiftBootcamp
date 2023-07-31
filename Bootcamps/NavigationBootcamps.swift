//
//  NavigationBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/31.
//

import SwiftUI

struct NavigationBootcamps: View {
    var body: some View {
        //不能相互嵌套NavigationView
        NavigationView {
            ScrollView{
                NavigationLink("Hello") {
                    MyOtherScreen()
                }//跳转到另一页
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
                
            }
            .navigationTitle("All InBox")//开启导航标题
//            .navigationBarItems(
//                leading: Image(systemName: "person.fill"),
//                trailing: Image(systemName: "gear")
//            )//设置导航栏图标
            .navigationBarItems(
                leading: HStack{
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                },
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    }
                )
                .accentColor(.red)
            )
//            .navigationBarTitleDisplayMode(.automatic)//设置导航标题展示风格,推荐自动，可以随着滑动自动切换样式
//            .navigationBarHidden(true)//隐藏导航栏标题
        }
        
    }
}

struct MyOtherScreen :View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            VStack{
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here") {
                    Text("3rd Screen")
                }
            }
        }
    }
}

struct NavigationBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamps()
    }
}
