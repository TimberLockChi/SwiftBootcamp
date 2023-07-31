//
//  SheetBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/30.
//

import SwiftUI

struct SheetBootcamps: View {
    @State var showSheet: Bool=false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                //全屏页面弹出，不能与sheet同时使用
                SecondScreen()
            })
            //展示新页面
//            .sheet(isPresented: $showSheet) {
//                //非全屏页面弹出，不能与fullScreenCover同时使用
//                //新页面,不要添加逻辑语句在此区域例如if，不要添加格外的变量
//                SecondScreen()
//            }

        }
    }
}

struct SecondScreen : View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button {
                presentationMode.wrappedValue.dismiss()//关闭sheet页面
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
            
        }
    }
}

struct SheetBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamps()
        //SecondScreen()
    }
}
