//
//  InitializerBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/12.
//

import SwiftUI

struct InitializerBootcamps: View {
    //let变量一旦赋值，不可变更，var变量可以多次变更
    let backgroundColor:Color//方法中没有赋初始值的变量，都需要作为参数传入
    let count:Int
    let title:String
    
    //初始化函数，可以定制特殊属性
    init(count: Int, fruit:Fruits) {
        self.count = count+5
        if fruit == .apple{
            self.title="Apple"
            self.backgroundColor = .red
        }else{
            self.title="orange"
            self.backgroundColor = .orange
        }
    }
        
    //枚举，其中的值可以直接用.调用
    enum Fruits{
        case apple
        case orange
    }
    
    var body: some View {
        VStack{
            Text("\(count)")//数字要加转义
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
                .padding(.bottom,10)
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}

struct InitializerBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            //面向对象思维，可以通过初始化函数定制View
            InitializerBootcamps(count: 15,fruit: .orange)//需要传入未给出的颜色初始值,且传入顺序要与方法中声明的顺序相同，例如，count必须要在title前传入
            InitializerBootcamps(count: 20,fruit: .apple)//需要传入未给出的颜色初始值,且传入顺序要与方法中声明的顺序相同，例如，count必须要在title前传入
        }
       
    }
}
