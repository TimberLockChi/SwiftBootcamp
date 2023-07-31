//
//  TernaryBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/30.
//

import SwiftUI

struct TernaryBootcamps: View {
    @State var isStartState : Bool = false
    var body: some View {
        VStack{
            Button("Button:\(isStartState.description)"){
                isStartState.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isStartState ? Color.red : Color.blue)
                .frame(
                    width: isStartState ? 200 : 100,
                    height: isStartState ? 200 : 100
                )
//            if isStartState{
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.red)
//                    .frame(width: 200,height: 200)
//            }else{
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.blue)
//                    .frame(width: 200,height: 200)
//            }
            
        }
    }
}

struct TernaryBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamps()
    }
}
