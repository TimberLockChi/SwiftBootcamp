//
//  paddingAndSpaceBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/11.
//

import SwiftUI

struct paddingAndSpaceBootcamps: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.yellow)
//            .padding(.top,10)//在文本周围添加一圈空间,可以设置在那个方向添加空余，可以通过在下方添加padding语句添加更多的空间
//            .padding(.bottom,10)
//            .background(Color.blue)
//
        VStack(alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("abcfetekjjjjjjjjjjjjjjasdfadfasdfajsfdjasfaslfkjasklfjlasjdfjaljlknvdhxvixnbixdvnbicx")
        }
        .padding()
        .padding(.vertical,10)//垂直方向上添加空间
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color:.black.opacity(0.3),
                        radius: 10,
                        x:0.0,y:10)
        )
    }
}

struct paddingAndSpaceBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        paddingAndSpaceBootcamps()
    }
}
