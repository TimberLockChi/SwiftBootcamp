//
//  ShapesBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/6.
//

import SwiftUI

struct ShapesBootcamps: View {
    var body: some View {
        //Ellipse()//椭圆
        //Circle()//圆形
        //Capsule(style: .circular)胶囊型
        //Rectangle()//长方形
        RoundedRectangle(cornerRadius: 50)//圆角矩形
            //.fill(Color.green)
            //.foregroundColor(.pink)
            //.stroke()//圆形线，没有内容
            //.stroke(.red)
            //.stroke(.blue,lineWidth: 30)
//            .stroke(.blue,style: StrokeStyle(lineWidth: 30,lineCap: .round,dash: [30]))
//            .trim(from:0.0,to:0.9)//形状显示情况，右侧开始逆时针旋转去除所选部分的面积，from增大，是顺时针旋转，to减小，是逆时针旋转
//            .trim(from: 0.6,to: 1.0)//与stroke组合可以实现简单的加载效果
//            .stroke(Color.purple,lineWidth: 50)
        
            .frame(width: 200,height: 100)
            
    }
}

struct ShapesBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamps()
    }
}
