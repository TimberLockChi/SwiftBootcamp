//
//  GridBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/13.
//

import SwiftUI

struct GridBootcamps: View {
    //列组，可以设置列的参数,每一个GridItem表示一列
    //第一个参数表示格子大小，.fixed表示固定大小的列,.flexible表示可自适应调节大小的列，最大最小值表示其尺寸的上下限，
    //.adaptive表示将按照其最小大小尽可能的放置多的内容，各列均分屏幕大小，每个列内部尽可能多的填充
    let colums:[GridItem]=[
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(100),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
        
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        
//        GridItem(.adaptive(minimum: 50,maximum: 300),spacing: nil,alignment: nil),
//        GridItem(.adaptive(minimum: 100,maximum: 300),spacing: nil,alignment: nil),
//        GridItem(.adaptive(minimum: 50,maximum: 300),spacing: nil,alignment: nil),
        
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            //将content分配到所有列中，从左到右分配
            //内容的大小尺寸应该与列的属性一致，否则会出现超出范围并覆盖其他内容，导致无法正常显示的情况
            LazyVGrid(
                columns: colums,
                alignment:.center,
                spacing: 6,
                pinnedViews: [.sectionHeaders,.sectionFooters]//可以设置悬浮显示的视图，可以将单元的头部/尾部悬浮显示
            ){
                //Section可以设置一个单元的头部，尾部和中间的内容布局，每个部分可以设计特殊的布局样式
                Section {
                    ForEach(0..<10){index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment:.leading)//只给出最大值可以填充整个屏幕的宽度
                        .background(Color.blue)
                        .padding()
                } footer: {
                    Text("End")
                }
                
                Section {
                    ForEach(0..<10){index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment:.leading)//只给出最大值可以填充整个屏幕的宽度
                        .background(Color.green)
                        .padding()
                } footer: {
                    Text("End")
                }
            }
        }
    }
}

struct GridBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamps()
    }
}
