//
//  PickerBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection:String = "1"
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red//会更改所有SegmentedControl的样式
        let attributes:[NSAttributedString.Key:Any]=[
            .foregroundColor : UIColor.white//必须要是UIColor
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)//设置标题文本的样式
    }
    
    var body: some View {
        
        Picker(selection: $selection) {
            Text("1").tag("1")//tag对应实际选中的值
            Text("2").tag("2")
           
        } label: {
            Text("Picker")
        }.pickerStyle(SegmentedPickerStyle())

//        VStack {
//            HStack{
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(selection: $selection) {
//                ForEach(18..<100){ number in
//                    Text("\(number)")
//                        .tag("\(number)")
//            }
////                Text("1").tag(1)
////                Text("2").tag(2)//tag对应的值为选择该选项得到的值
////                Text("3").tag(3)
////                Text("4").tag(4)
////                Text("5").tag(5)
////                Text("6").tag(6)
////                Text("7").tag(7)
//            } label: {
//                Text("Picker")
//            }.pickerStyle(WheelPickerStyle())
//        }

    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
