//
//  ExtractSubviewBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/28.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            //内容布局
            contentLayer
        }
    }
    
    var contentLayer:some View{
        HStack{
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "Grapes", count: 20, color: .green)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }

}

struct ExtractSubviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcamp()
    }
}
//如果子视图有需要动态变换的值，可以将其提取成子视图，方便复用
struct MyItem: View {
    
    //需要初始化的值
    let title:String
    let count:Int
    let color:Color
    
    init(title: String, count: Int, color: Color) {
        self.title = title
        self.count = count
        self.color = color
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
