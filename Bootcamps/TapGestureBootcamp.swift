//
//  TapGestureBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/2.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State var isSelected:Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture(count:2) {
                    isSelected.toggle()//count表示点击多少下才触发
                }
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            Spacer()
        }.padding(40)//周围添加空间
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
