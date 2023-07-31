//
//  TextBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/6.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!This is fasdfasfdsafasbfdgbogjeior gsdhrtedfgbmdijdfgdfgko".capitalized)
//            .font(.system(
//                size: 24,
//                weight:.semibold,design: .monospaced))
//            .baselineOffset(-62.0)
//            .multilineTextAlignment(.center)
            //.kerning(10)//字母间分隔距离
            .foregroundColor(.red)
            .fontWeight(.semibold)//字体粗细
            .frame(width: 200,height: 100,alignment: .center)
            .minimumScaleFactor(0.1)//最小的可以缩放的倍数，来适应文本框
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
