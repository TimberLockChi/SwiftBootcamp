//
//  ToggleBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn:Bool=false
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "On Line ":"Off Line")
            }
            //绑定一个值作为开关控制的值
            Toggle(isOn: $toggleIsOn) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))//定制开关颜色
            Spacer()
        }.padding(.horizontal,100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
