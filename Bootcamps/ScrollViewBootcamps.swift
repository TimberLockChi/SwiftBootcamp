//
//  ScrollViewBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/12.
//

import SwiftUI

struct ScrollViewBootcamps: View {
    var body: some View {
//        //第一个参数设置滑动的方向，第二个参数设置是否需要显示位置提示
//        ScrollView(.vertical,showsIndicators: true){
//            VStack{
//                ForEach(0..<50){index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                }
//            }
//        }
        
        //VStack和HStack中的内容会全部加载，无论是否展示在画面上，因此在大量数据需要滑动浏览时，可以使用LazyV/HStack，在出现在屏幕上时在进行渲染加载
        //默认竖向滑动
        ScrollView{
            //懒加载
            LazyVStack{
                ForEach(0..<10){index in
                    //10个滑动视图，每一个都是水平滑动
                    ScrollView(.horizontal,showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<20){index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamps()
    }
}
