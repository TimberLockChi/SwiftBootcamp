//
//  TextEditorBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText:String="This is the starting text"
    @State var savedText:String = ""
    var body: some View {
        //支持多行可以换行
        NavigationView {
            VStack{
                TextEditor(text: $textEditorText)//通过引用变量的方式获取输入框中的文字
                    .frame(height: 250)
                    .foregroundColor(.red)
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText//监听输入的文字变量就可以获取输入内容
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth:.infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("Bootcamp!")
        }
        
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
