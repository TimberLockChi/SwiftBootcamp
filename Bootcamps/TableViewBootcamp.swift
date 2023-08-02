//
//  TableViewBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct TableViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    let icons:[String]=[
        "heart.fill","globe","house.fill","person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons,id:\.self){icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .tabViewStyle(PageTabViewStyle())//设置样式，PageTabViewStyle为卡片式
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
//        //设置当前被选中的页面，由selectedTab标识,如果添加了selection参数就必须要为每一个组件设置一个tag
//        TabView(selection: $selectedTab) {
//            HomeView(seletedTab: $selectedTab).tabItem {
//                Image(systemName: "house.fill")
//                Text("Home")
//            }.tag(0)
//
//            Text("Browse Tab").tabItem {
//                Image(systemName: "globe")
//                Text("Browse")
//            }.tag(1)
//
//            Text("Profile Tab").tabItem {
//                Image(systemName: "person.fill")
//                Text("profile")
//            }.tag(2)
//        }
//        .accentColor(.red)
    }
}

struct HomeView: View {
    @Binding var seletedTab : Int
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.top)
            VStack{
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    seletedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
           

        }
    }
}

struct TableViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TableViewBootcamp()
    }
}


