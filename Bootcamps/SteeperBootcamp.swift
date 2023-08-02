//
//  SteeperBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct SteeperBootcamp: View {
    
    @State var stepperValue:Int = 10
    
    @State var widthIncrement:CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper:\(stepperValue)",value:$stepperValue)
                .padding(50)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement,height: 100,alignment: .center)
            //设置标题并绑定增大减少的监听
            Stepper {
                Text("Stepper 2")
            } onIncrement: {
                incrementWidth(amount: 10)
            } onDecrement: {
                incrementWidth(amount: -10)
            }

        }
    }
    func incrementWidth(amount:CGFloat){
        //可以通过动画实现 组件的放大和缩小
        withAnimation(.easeInOut){
            widthIncrement+=amount//数值变换动画渐变
        }
    }
}

struct SteeperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SteeperBootcamp()
    }
}
