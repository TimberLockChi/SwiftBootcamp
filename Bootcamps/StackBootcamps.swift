//
//  StackBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/11.
//

import SwiftUI

struct StackBootcamps: View {
    //Vstacks->Vertical
    //Hstacks->Horizontal
    //Zstacks->zIndex(back->front)
    var body: some View {
        //spacing调整Stack中组件的空间
        VStack(alignment: .center,spacing: 0){
            Rectangle()
                .fill(Color.red)
                .frame(width: 100,height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100,height: 100)
            Rectangle()
                .fill(Color.green )
                .frame(width: 100,height: 100)
        }
    }
}

struct StackBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamps()
    }
}
