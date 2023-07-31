//
//  FrameBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/11.
//

import SwiftUI

struct FrameBootcamps: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)//加载Text组件上的背景
            //.frame(width: 100,height: 100,alignment: .center)//添加frame以后，后续的修改会应用到frame上，alignment是内部内容的对其方式
            .frame(maxWidth: .infinity,maxHeight:.infinity,alignment: .leading)
            .background(Color.red)
            
            
    }
}

struct FrameBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamps()
    }
}
