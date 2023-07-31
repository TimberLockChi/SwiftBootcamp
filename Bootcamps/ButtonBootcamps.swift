//
//  ButtonBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/14.
//

import SwiftUI

struct ButtonBootcamps: View {
    @State var title:String="This is a title"//可变变量
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.largeTitle)
            Button("Press") {
                //点击按钮后的动作
                self.title="Just press"//变更标题
            }
            .accentColor(.red)//修改默认颜色
            
            Button {
                //点击按钮后的动作
                self.title="Button#2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal,20)
                    .padding()
                    .background(Color.blue.cornerRadius(10).shadow(radius: 10))
            }
            
            Button{
                self.title="Button #3"
            }label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay(Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red))
            }
            
            Button {
                self.title="Button #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(Capsule()
                        .stroke(Color.gray,lineWidth: 1.0))
            }


        }
        
    }
}

struct ButtonBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamps()
    }
}
