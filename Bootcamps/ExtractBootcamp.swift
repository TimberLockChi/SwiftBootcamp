//
//  ExtractBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/28.
//

import SwiftUI

struct ExtractBootcamp: View {
    @State var backgroundColor:Color=Color.pink
    var body: some View {
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(.all)
            //content
            contentLayer
        }
    }
    
    var contentLayer:some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

struct ExtractBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractBootcamp()
    }
}
