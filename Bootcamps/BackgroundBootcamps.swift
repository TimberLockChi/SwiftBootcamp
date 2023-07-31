//
//  BackgroundBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/11.
//

import SwiftUI

struct BackgroundBootcamps: View {
    var body: some View {
//        Rectangle()
//            .fill(Color.black)
//            .frame(width: 100,height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 50,height: 50)
//                ,alignment: .leading
//            )//蒙版，覆盖在原图形上面，可以用任意view覆盖，可以定义其各个属性
//            .background(
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 200,height: 200)
//                ,alignment: .leading
//            )//背景，在原图形下方，可以用任意View，可以定义其各个属性
        Image(systemName: "heart.fill")
            .font(.system(size:40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.red,Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100,height: 100)
                    .shadow(radius: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35,height: 35)
                            .overlay(
                                Text("5")
                                    .foregroundColor(Color.white)
                            )
                        ,alignment: .bottomTrailing
                    )
                    .shadow(radius: 5)
            )
            
    }
}

struct BackgroundBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBootcamps()
    }
}
