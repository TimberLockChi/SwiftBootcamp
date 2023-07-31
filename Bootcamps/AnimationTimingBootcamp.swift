//
//  AnimationTimingBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/30.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimated:Bool=false
    let timing : Double = 10
    
    var body: some View {
        VStack{
            Button("Button"){
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 150,height: 100)
                .animation(.spring(response: 0.5,//运行时间，0.5较为合适
                                   dampingFraction: 0.7,//动画缓冲幅度，0.7较为合适
                                   blendDuration: 1.0))//尽可能自然的过渡
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 150,height: 100)
                .animation(Animation.linear(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 150,height: 100)
                .animation(Animation.easeIn(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 150,height: 100)
                .animation(Animation.easeInOut(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 150,height: 100)
                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
