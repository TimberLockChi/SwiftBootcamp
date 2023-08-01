//
//  ContextMenuBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor:Color=Color.purple
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share Post",systemImage: "flame.fill")//Label组件，一行里有标题和图标
            }

            Button {
                backgroundColor = .red
            } label: {
                Text("Report Post")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
