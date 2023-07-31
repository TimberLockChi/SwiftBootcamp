//
//  SafeAreaBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/14.
//

import SwiftUI

struct SafeAreaBootcamps: View {
    var body: some View {
        //默认情况下，会只在安全区域显示
        ScrollView{
            LazyVGrid(columns: [GridItem(.flexible(),alignment: .center)],
                      pinnedViews: .sectionHeaders){
                Section {
                    ForEach(0..<10){index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                } header: {
                    Text("Title")
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
            }
        }.background(Color.red.ignoresSafeArea(edges:.all))//可以实现忽略安全区域显示全部背景颜色
        
//        //通过ZStack实现忽视安全区域的同时保证组件正常显示
//        ZStack {
//            //background
//            Color.blue.edgesIgnoringSafeArea(.all)
//            //foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity,maxHeight: .infinity)//默认只会在安全区域里显示
//            //.background(Color.red)
////            .edgesIgnoringSafeArea(.all)//取消安全区域限制,可能会导致重要组件被遮挡
//        }
    }
}

struct SafeAreaBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamps()
    }
}
