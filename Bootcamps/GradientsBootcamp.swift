//
//  GradientsBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/7.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
                
                //颜色可以在Asset中定制
                
                //Color.red
//                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)),Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))]),
//                               startPoint: .leading,
//                               endPoint:.trailing)//线性渐变，gradient设置渐变的颜色组成，startPoint和endPoint设置渐变的起始范围
                
//                RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue]),
//                               center: .topLeading,
//                               startRadius: 10,
//                               endRadius: 400)//散发渐变，gradient设置渐变的颜色组成，center设置散发中心，startRadius设置开始渐变时相对于中心的距离，endRadius设置渐变结束时相对于中心的距离
                
//                AngularGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .topLeading,angle: .degrees(180+45))//角度渐变,angle表示渐变角度，degrees表示角度，radiant表示弧度，常用角度表示
            )//填充
            .frame(width: 200,height: 300)//设置大小参数
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
