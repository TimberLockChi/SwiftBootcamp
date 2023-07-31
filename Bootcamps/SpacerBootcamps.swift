//
//  SpacerBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/12.
//

import SwiftUI

struct SpacerBootcamps: View {
    var body: some View {
//        HStack(spacing: nil){
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(Color.red)//红色的空格线，可以尽可能的将布局均分
//            Spacer()
//                .frame(height: 10)
//                .background(Color.red)//红色的空格线，可以尽可能的将布局均分
//            Rectangle()
//                .frame(width: 100,height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.red)//红色的空格线
//            Rectangle()
//                .frame(width: 100,height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.red)//红色的空格线，可以尽可能的将布局均分
//            Rectangle()
//                .frame(width: 100,height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.red)//红色的空格线，可以尽可能的将布局均分
//        }
//        .background(Color.yellow)
//        .padding(.horizontal,10)
//        .background(Color.blue)
        VStack {
            HStack{
                Image(systemName: "xmark")
                Spacer().frame(height: 10).background(Color.red)
                Image(systemName: "gear")
            }
                .font(.largeTitle)
                .background(Color.yellow)
                .padding(.horizontal)
            Spacer().frame(width: 10).background(Color.red)//占位符，在整个结构中自动调节,将VStack中的其他内容顶到顶部
            Rectangle().frame(height: 20)
                .foregroundColor(Color.yellow)
        }
        
    }
}

struct SpacerBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamps()
    }
}
