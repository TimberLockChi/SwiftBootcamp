//
//  StateBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/28.
//

import SwiftUI

struct StateBootcamp: View {
    //@State 用来告知View需要注意backgroundColor的变化
    @State var backgroundColor : Color = Color.green
    @State var myTitle:String="My Title"
    @State var count:Int = 0
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count:\(count)")
                    .font(.headline)
                    .underline() 
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle="Button 1 was pressed"
                        count=count+1
                    }
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle="Button 2 was pressed"
                        count=count-1
                    }
                }
            }.foregroundColor(.white)//可以将所有的组件都变成上色
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
