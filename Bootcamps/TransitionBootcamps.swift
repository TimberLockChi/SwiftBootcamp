//
//  TransitionBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/30.
//

import SwiftUI

struct TransitionBootcamps: View {
    @State var showView:Bool=false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height*0.5)//屏幕高度的一半
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom))
                    )//定制进入离开的样式
                    .animation(.easeInOut)
//                    .transition(AnyTransition.opacity.animation(.easeInOut))//变换动画,.opacity从透明度的角度执行动画，即渐入渐出，.scal从大小的角度执行动画，即放大缩小
//                    .transition(.move(edge: .bottom))//.slide滑入,.move 指定任意边移动入内
//
            }
           
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamps()
    }
}
