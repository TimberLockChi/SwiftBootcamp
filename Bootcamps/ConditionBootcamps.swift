//
//  IfElseBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/28.
//

import SwiftUI

struct ConditionBootcamps: View {
    @State var showCircle:Bool=false
    @State var showRectangle:Bool=false
    @State var isLoading:Bool=false
    var body: some View {
        VStack(spacing: 20) {
            Button("Is Loding:\(isLoading.description)"){
                isLoading.toggle()
            }
            if isLoading{
                ProgressView()//IOS自带的加载动画视图
            } else {
                
            }
            
//            Button("Circle Button：\(showCircle.description)"){
//                showCircle.toggle()//bool值对换
//            }
//            Button("Rectangle Button:\(showRectangle.description)"){
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100,height: 100)
//            }
//
//            if showRectangle{
//                Rectangle()
//                    .frame(width: 100,height: 100)
//            }
//
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200,height: 100)
//            }
//
//            Spacer()
        }
    }
}

struct ConditionBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        ConditionBootcamps()
    }
}
