//
//  ImageBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/10.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("baidu")
            .renderingMode(.template)
            
            .resizable()
            .scaledToFill()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 300,height: 200)
            .foregroundColor(.red)
            //.cornerRadius(150)
            .clipShape(Circle())//将图片裁剪成任意图形,可以使用图形的所有属性定制
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
