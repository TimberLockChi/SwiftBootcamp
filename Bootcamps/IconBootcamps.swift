//
//  IconBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/10.
//

import SwiftUI

struct IconBootcamps: View {
    var body: some View {
        Image(systemName: "cloud.sun.rain.fill")//系统图片,具体的名称见SF symbol
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()//图形根据框架自动调整大小
            //.aspectRatio(contentMode: .fill)//设置宽高比里，其中.fill可以尽可能的填充图像框架的大小（可能会溢出部分）=scaledToFill
                //.fit可以使图像完全的填充到框架内部=.scaledToFit()
            //.scaledToFill()
            //.scaledToFit()//自动调整大小适应框架
            //.font(.largeTitle)//作为字体调节
            //.font(.system(size: 50))//适配系统大小
            //.foregroundColor(.green)
            //.frame(width: 300,height: 300)//给定一个大小图形框架
            //.clipped()//自动剪裁
            
    }
}

struct IconBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        IconBootcamps()
    }
}
