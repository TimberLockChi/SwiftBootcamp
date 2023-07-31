//
//  BindingBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/28.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor:Color=Color.green
    @State var title:String="Title"
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack{
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor,title: $title)//子View绑定父View时，调用需要加$
            }
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor:Color//绑定父视图的变量，可以做到同步更改
    @State var buttonColor:Color=Color.blue
    @Binding var title:String//绑定父视图的变量，可以做到同步更改
    
    var body: some View {
        Button {
            backgroundColor=Color.orange
            buttonColor=Color.pink
            title="New Title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
