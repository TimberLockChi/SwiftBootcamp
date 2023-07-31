//
//  AnimationBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/30.
//

import SwiftUI

struct AnimationBootcamps: View {
    
    @State var isAnimated : Bool=false
    
    var body: some View {
        VStack{
            Button("Button"){
                //动画方式一：
                //被withAnimation方法中影响的视图都会以动画的形式进行更改,例如下例中被isAnimated影响的所有View都会以动画的形式进行变更
                //.default默认动画.delay延期一段时间进行
                //.repeatCount重复动画，第一个参数表示重复的次数，第二个参数autoreverses表示是否会自动返回，true表示会原路返回，false表示会返回原位再进行一次
//                withAnimation(
//                    Animation
//                        .default
//
//                ){}
                
                isAnimated.toggle()//取反值
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(x: isAnimated ? 110 : 0 , y: isAnimated ? 320: 0)//将原有的View根据Y或者X移动指定大小的位置
                .animation(Animation.default)//所有对此View进行变更的操作都会以动画的方式进行
            
            Spacer()
        }
    }
}

struct AnimationBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamps()
    }
}
