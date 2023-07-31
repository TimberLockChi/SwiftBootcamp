//
//  ForeachBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/12.
//

import SwiftUI

struct ForeachBootcamps: View {
    let data:[String]=["Hi","Hello","Hey"]//数组
    let myString :String="Hello"
    var body: some View {
        VStack{
//            ForEach(0..<10){index in
//                Text("Hi:\(index)")
//            }//0-9的循环
            ForEach(data.indices){index in
                Text("\(data[index]) :\(index)")
            }//遍历数组
        }
    }
}

struct ForeachBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamps()
    }
}
