//
//  ColorsBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/6.
//

import SwiftUI

struct ColorsBootcamps: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.black
                //Color(UIColor.secondarySystemBackground)//系统次级色彩
                Color("CustomColor")//调用自定义色彩显示
               
            )
            .frame(width: 300,height: 200)
            //.shadow(radius: 10)//图形周围设置阴影范围，悬浮效果
            .shadow(color: Color("CustomColor").opacity(0.2), radius: 10,x:0,y:0)//设置周围阴影颜色，以及其实范围，x坐标自左向右，y坐标自上向下
            //.opacity()设置透明度
    }
}

struct ColorsBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamps()
    }
}
