//
//  DarkModeBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/2.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme//对所有colorScheme都会进行更改
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 20){
                    Text("this text is primary")
                        .foregroundColor(.primary)//可以在黑暗模式下自适应
                    Text("This color is secondary")
                        .foregroundColor(.secondary)//可以在黑暗模式下自适应
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is red")
                        .foregroundColor(.red)
                    Text("This color is globally")
                        .foregroundColor(Color("AdaptiveColor"))//适配黑暗模式，方式1：在Asset中配置 自定义颜色
                    Text("This color is locally adaptive!")//适配黑暗模式，方式2：根据当前系统的颜色风格更改
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
            DarkModeBootcamp()
                .preferredColorScheme(.light)
        }
        
    }
}
